import 'package:bloc/bloc.dart';
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
      var res = await DbHelper.login(result);
      if (res != null) {
        emit(AuthSuccess(
            user: UserModel(
                username: result.username,
                password: result.password,
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
      var res = await DbHelper.signUp(event.user);
      user.id = res;
      SessionHelper.write(user);
      emit(AuthSuccess(user: user));
    }
  }

  _onLogin(LoginAuth event, Emitter<AuthState> emit) async {
    if (state is AuthLoaded) {
      var value = await DbHelper.login(event.user);

      if (value != null) {
        final user = event.user;
        await SessionHelper.write(UserModel(
            username: user.username, password: user.password, id: value));

        emit(AuthSuccess(
            user: UserModel(
                username: user.username, password: user.password, id: value)));
      } else {
        emit(const AuthFailed(message: "Username or Password Is Wrong"));
        emit(const AuthLoaded());
      }
    }
    if (state is AuthSuccess) {
      emit(AuthSuccess(user: event.user));
    }
  }

  _onLogout(LogoutAuth event, Emitter<AuthState> emit) async {
    if (state is AuthSuccess) {
      var res = await SessionHelper.read();
      await SessionHelper.logout();
      emit(AuthLogout(user: res!));
      emit(const AuthLoaded());
    }
  }
}
