part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthLoading;
  const factory AuthState.load() = AuthLoaded;
  const factory AuthState.login({required UserModel user}) = AuthSubmit;
  const factory AuthState.signup({required UserModel user}) = AuthSignup;
  const factory AuthState.success({required UserModel user}) = AuthSuccess;
  const factory AuthState.failed({String? message}) = AuthFailed;
  const factory AuthState.logout({required UserModel user}) = AuthLogout;
}
