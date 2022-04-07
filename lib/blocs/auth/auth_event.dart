part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class LoadAuth extends AuthEvent {
  final UserModel user;
  const LoadAuth({
    required this.user,
  });
  @override
  List<Object> get props => [user];
}

class LoginAuth extends AuthEvent {
  final UserModel user;
  const LoginAuth({
    required this.user,
  });
  @override
  List<Object> get props => [user];
}

class SignupAuth extends AuthEvent {
  final UserModel user;
  const SignupAuth({
    required this.user,
  });
  @override
  List<Object> get props => [user];
}


class LogoutAuth extends AuthEvent {
  final UserModel user;
  const LogoutAuth({
    required this.user,
  });
  @override
  List<Object> get props => [user];
}