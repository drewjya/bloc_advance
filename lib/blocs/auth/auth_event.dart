part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.load() = LoadAuth;
  const factory AuthEvent.login({required UserModel user}) = LoginAuth;
  const factory AuthEvent.signup({required UserModel user}) = SignupAuth;
  const factory AuthEvent.failed({required String message}) = FailedAuth;
  const factory AuthEvent.success() = SuccessAuth;
  const factory AuthEvent.logout() = LogoutAuth;
}
