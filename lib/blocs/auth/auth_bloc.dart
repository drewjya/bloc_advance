import 'package:bloc/bloc.dart';
import 'package:bloc_advance/function/encode_password.dart';
import 'package:bloc_advance/models/users_model.dart';
import 'package:bloc_advance/services/db_helper.dart';
import 'package:bloc_advance/services/session_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthLoading()) {
    on<LoadAuth>(_onLoad);
    on<SignupAuth>(_onSignup);
    on<LoginAuth>(_onLogin);
    on<LogoutAuth>(_onLogout);
  }
  _onLoad(LoadAuth event, Emitter<AuthState> emit) async {
    var result = await SessionHelper.read();
    if (result != null) {
      UserModel user = UserModel(
          username: result.username, password: result.password, id: result.id);
      var res = await DbHelper.login(user);
      if (res != null) {
        emit(const AuthAuto());
        emit(AuthSuccess(
            user: UserModel(
                username: result.username,
                password: result.password.encode(),
                id: res)));
      } else {
        emit(const AuthLoaded());
      }
    } else {
      emit(const AuthLoaded());
    }
  }

  _onSignup(SignupAuth event, Emitter<AuthState> emit) async {
    if (state is AuthLoaded) {
      UserModel user = event.user;
      var res = await DbHelper.signUp(
          event.user.copyWith()..password = user.password.encode());
      user.id = res;
      user.password = user.password.encode();
      SessionHelper.write(user);
      emit(const AuthLoading());
      emit(AuthSuccess(user: user));
    }
  }

  _onLogin(LoginAuth event, Emitter<AuthState> emit) async {
    if (state is AuthLoaded) {
      var value = await DbHelper.login(
          event.user.copyWith()..password = event.user.password.encode());
      if (value != null) {
        final user = event.user;
        int id = value;
        await SessionHelper.write(UserModel(
            username: user.username, password: user.password.encode(), id: id));

        emit(const AuthLoading());

        emit(AuthSuccess(
            user: UserModel(
                username: user.username,
                password: user.password.encode(),
                id: value)));
        // emit(const AuthLoaded());
      } else {
        emit(const AuthFailed(message: "Username or Password Is Wrong"));
        emit(const AuthLoaded());
      }
    } else if (state is AuthSuccess) {
      emit(AuthSuccess(
          user: event.user.copyWith()
            ..password = event.user.password.encode()));
    }
  }

  _onLogout(LogoutAuth event, Emitter<AuthState> emit) async {
    if (state is AuthSuccess) {
      var res = await SessionHelper.read();
      await SessionHelper.logout();
      emit(AuthLogout(user: res!));
      emit(AuthLoading(usermodel: res));
      emit(AuthLoaded(user: res));
    }
  }
}
