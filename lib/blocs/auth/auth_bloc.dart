import 'package:bloc/bloc.dart';
import 'package:bloc_advance/models/users_model.dart';
import 'package:bloc_advance/services/db_helper.dart';
import 'package:bloc_advance/services/session_helper.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc_advance/function/encode_password.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc()
      : super(AuthLoaded(
            userS: UserModel(username: "", password: ""), loggedInS: false)) {
    on<LoadAuth>(_onLoad);
    on<LoginAuth>(_onLogin);
    on<SignupAuth>(_onSignup);
    on<LogoutAuth>(_onLogout);
  }

  _onLoad(LoadAuth event, Emitter<AuthState> emit) async {
    var result = await SessionHelper.read();
    if (result != null) {
      UserModel user = result.copyWith()..id = result.id;
      var res = await DbHelper.login(user);
      if (res != null) {
        emit(AuthAuto(
            userS: user.copyWith()..password = user.password.encode()));
        emit(AuthSuccess(userS: state.user));
      } else {
        emit(AuthLoaded(userS: state.user, loggedInS: false));
      }
    } else {
      emit(AuthLoaded(userS: state.user, loggedInS: false));
    }
  }

  _onLogin(LoginAuth event, Emitter<AuthState> emit) async {
    if (state is AuthLoaded) {
      var value = await DbHelper.login(
          event.user.copyWith()..password = event.user.password.encode());
      if (value != null) {
        final user = event.user.copyWith(
          password: event.user.password.encode(),
          id: value,
        );
        await SessionHelper.write(user);

        emit(AuthLoading(userS: user));
        emit(AuthSuccess(userS: user));
      } else {
        emit(AuthFailed(userS: state.user));
        emit(AuthLoaded(userS: state.user, loggedInS: false));
      }
    } else if (state is AuthSuccess) {
      emit(AuthSuccess(
          userS: event.user.copyWith()
            ..password = event.user.password.encode()));
    } else {
      emit(AuthLoaded(userS: state.user, loggedInS: false));
    }
  }

  _onSignup(SignupAuth event, Emitter<AuthState> emit) async {
    if (state is AuthLoaded) {
      UserModel user =
          event.user.copyWith(password: event.user.password.encode());
      var res = await DbHelper.signUp(user.copyWith(password: user.password));
      user.id = res;
      await SessionHelper.write(user);
      emit(AuthLoading(userS: user));
      emit(AuthSuccess(userS: user));
    }
  }

  _onLogout(LogoutAuth event, Emitter<AuthState> emit) async {
    if (state is AuthSuccess) {
      await SessionHelper.logout();
      emit(AuthLogout(userS: event.user));
      emit(AuthLoaded(userS: event.user, loggedInS: false));
      // emit(AuthLoaded(
      //     userS: UserModel(username: "", password: ""), loggedInS: false));
    }
  }
}
