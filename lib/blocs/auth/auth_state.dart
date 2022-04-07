part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  final UserModel user;
  final bool loggedIn;
  const AuthState({required this.user, required this.loggedIn});
  @override
  List<Object> get props => [];
}

class AuthLoaded extends AuthState {
  final UserModel userS;
  final bool loggedInS;

  const AuthLoaded({required this.userS, required this.loggedInS})
      : super(user: userS, loggedIn: loggedInS);

  // const AuthLoaded({required this.user, required this.loggedIn});
  @override
  List<Object> get props => [userS];
}

class AuthSuccess extends AuthState {
  final UserModel userS;
  const AuthSuccess({
    required this.userS,
  }) : super(user: userS, loggedIn: true);

  @override
  List<Object> get props => [userS];
}

class AuthFailed extends AuthState {
  final UserModel userS;

  const AuthFailed({
    required this.userS,
  }) : super(user: userS, loggedIn: false);
  @override
  List<Object> get props => [userS, loggedIn];
}

class AuthAuto extends AuthState {
  final UserModel userS;

  const AuthAuto({
    required this.userS,
  }) : super(user: userS, loggedIn: true);
  @override
  List<Object> get props => [userS, loggedIn];
}
class AuthLoading extends AuthState {
  final UserModel userS;

  const AuthLoading({
    required this.userS,
  }) : super(user: userS, loggedIn: true);
  @override
  List<Object> get props => [userS, loggedIn];
}

class AuthLogout extends AuthState {
  final UserModel userS;

  const AuthLogout({
    required this.userS,
  }) : super(user: userS, loggedIn: false);
  @override
  List<Object> get props => [userS, loggedIn];
}

// AuthLoading
// AuthLoaded
// AuthSubmit
// AuthSignup
// AuthAuto
// AuthFailed
// AuthLogout
// AuthAuto