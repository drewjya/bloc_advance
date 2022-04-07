// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  LoadAuth load() {
    return const LoadAuth();
  }

  LoginAuth login({required UserModel user}) {
    return LoginAuth(
      user: user,
    );
  }

  SignupAuth signup({required UserModel user}) {
    return SignupAuth(
      user: user,
    );
  }

  FailedAuth failed({required String message}) {
    return FailedAuth(
      message: message,
    );
  }

  SuccessAuth success() {
    return const SuccessAuth();
  }

  LogoutAuth logout() {
    return const LogoutAuth();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(String message) failed,
    required TResult Function() success,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAuth value) load,
    required TResult Function(LoginAuth value) login,
    required TResult Function(SignupAuth value) signup,
    required TResult Function(FailedAuth value) failed,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(LogoutAuth value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $LoadAuthCopyWith<$Res> {
  factory $LoadAuthCopyWith(LoadAuth value, $Res Function(LoadAuth) then) =
      _$LoadAuthCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LoadAuthCopyWith<$Res> {
  _$LoadAuthCopyWithImpl(LoadAuth _value, $Res Function(LoadAuth) _then)
      : super(_value, (v) => _then(v as LoadAuth));

  @override
  LoadAuth get _value => super._value as LoadAuth;
}

/// @nodoc

class _$LoadAuth implements LoadAuth {
  const _$LoadAuth();

  @override
  String toString() {
    return 'AuthEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(String message) failed,
    required TResult Function() success,
    required TResult Function() logout,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAuth value) load,
    required TResult Function(LoginAuth value) login,
    required TResult Function(SignupAuth value) signup,
    required TResult Function(FailedAuth value) failed,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(LogoutAuth value) logout,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadAuth implements AuthEvent {
  const factory LoadAuth() = _$LoadAuth;
}

/// @nodoc
abstract class $LoginAuthCopyWith<$Res> {
  factory $LoginAuthCopyWith(LoginAuth value, $Res Function(LoginAuth) then) =
      _$LoginAuthCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

/// @nodoc
class _$LoginAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LoginAuthCopyWith<$Res> {
  _$LoginAuthCopyWithImpl(LoginAuth _value, $Res Function(LoginAuth) _then)
      : super(_value, (v) => _then(v as LoginAuth));

  @override
  LoginAuth get _value => super._value as LoginAuth;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(LoginAuth(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$LoginAuth implements LoginAuth {
  const _$LoginAuth({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.login(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginAuth &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $LoginAuthCopyWith<LoginAuth> get copyWith =>
      _$LoginAuthCopyWithImpl<LoginAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(String message) failed,
    required TResult Function() success,
    required TResult Function() logout,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAuth value) load,
    required TResult Function(LoginAuth value) login,
    required TResult Function(SignupAuth value) signup,
    required TResult Function(FailedAuth value) failed,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(LogoutAuth value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginAuth implements AuthEvent {
  const factory LoginAuth({required UserModel user}) = _$LoginAuth;

  UserModel get user;
  @JsonKey(ignore: true)
  $LoginAuthCopyWith<LoginAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupAuthCopyWith<$Res> {
  factory $SignupAuthCopyWith(
          SignupAuth value, $Res Function(SignupAuth) then) =
      _$SignupAuthCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

/// @nodoc
class _$SignupAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignupAuthCopyWith<$Res> {
  _$SignupAuthCopyWithImpl(SignupAuth _value, $Res Function(SignupAuth) _then)
      : super(_value, (v) => _then(v as SignupAuth));

  @override
  SignupAuth get _value => super._value as SignupAuth;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(SignupAuth(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$SignupAuth implements SignupAuth {
  const _$SignupAuth({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthEvent.signup(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignupAuth &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $SignupAuthCopyWith<SignupAuth> get copyWith =>
      _$SignupAuthCopyWithImpl<SignupAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(String message) failed,
    required TResult Function() success,
    required TResult Function() logout,
  }) {
    return signup(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
  }) {
    return signup?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAuth value) load,
    required TResult Function(LoginAuth value) login,
    required TResult Function(SignupAuth value) signup,
    required TResult Function(FailedAuth value) failed,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(LogoutAuth value) logout,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class SignupAuth implements AuthEvent {
  const factory SignupAuth({required UserModel user}) = _$SignupAuth;

  UserModel get user;
  @JsonKey(ignore: true)
  $SignupAuthCopyWith<SignupAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailedAuthCopyWith<$Res> {
  factory $FailedAuthCopyWith(
          FailedAuth value, $Res Function(FailedAuth) then) =
      _$FailedAuthCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailedAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $FailedAuthCopyWith<$Res> {
  _$FailedAuthCopyWithImpl(FailedAuth _value, $Res Function(FailedAuth) _then)
      : super(_value, (v) => _then(v as FailedAuth));

  @override
  FailedAuth get _value => super._value as FailedAuth;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailedAuth(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedAuth implements FailedAuth {
  const _$FailedAuth({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthEvent.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailedAuth &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailedAuthCopyWith<FailedAuth> get copyWith =>
      _$FailedAuthCopyWithImpl<FailedAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(String message) failed,
    required TResult Function() success,
    required TResult Function() logout,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAuth value) load,
    required TResult Function(LoginAuth value) login,
    required TResult Function(SignupAuth value) signup,
    required TResult Function(FailedAuth value) failed,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(LogoutAuth value) logout,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class FailedAuth implements AuthEvent {
  const factory FailedAuth({required String message}) = _$FailedAuth;

  String get message;
  @JsonKey(ignore: true)
  $FailedAuthCopyWith<FailedAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessAuthCopyWith<$Res> {
  factory $SuccessAuthCopyWith(
          SuccessAuth value, $Res Function(SuccessAuth) then) =
      _$SuccessAuthCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SuccessAuthCopyWith<$Res> {
  _$SuccessAuthCopyWithImpl(
      SuccessAuth _value, $Res Function(SuccessAuth) _then)
      : super(_value, (v) => _then(v as SuccessAuth));

  @override
  SuccessAuth get _value => super._value as SuccessAuth;
}

/// @nodoc

class _$SuccessAuth implements SuccessAuth {
  const _$SuccessAuth();

  @override
  String toString() {
    return 'AuthEvent.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(String message) failed,
    required TResult Function() success,
    required TResult Function() logout,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAuth value) load,
    required TResult Function(LoginAuth value) login,
    required TResult Function(SignupAuth value) signup,
    required TResult Function(FailedAuth value) failed,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(LogoutAuth value) logout,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessAuth implements AuthEvent {
  const factory SuccessAuth() = _$SuccessAuth;
}

/// @nodoc
abstract class $LogoutAuthCopyWith<$Res> {
  factory $LogoutAuthCopyWith(
          LogoutAuth value, $Res Function(LogoutAuth) then) =
      _$LogoutAuthCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutAuthCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LogoutAuthCopyWith<$Res> {
  _$LogoutAuthCopyWithImpl(LogoutAuth _value, $Res Function(LogoutAuth) _then)
      : super(_value, (v) => _then(v as LogoutAuth));

  @override
  LogoutAuth get _value => super._value as LogoutAuth;
}

/// @nodoc

class _$LogoutAuth implements LogoutAuth {
  const _$LogoutAuth();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogoutAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(String message) failed,
    required TResult Function() success,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(String message)? failed,
    TResult Function()? success,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAuth value) load,
    required TResult Function(LoginAuth value) login,
    required TResult Function(SignupAuth value) signup,
    required TResult Function(FailedAuth value) failed,
    required TResult Function(SuccessAuth value) success,
    required TResult Function(LogoutAuth value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAuth value)? load,
    TResult Function(LoginAuth value)? login,
    TResult Function(SignupAuth value)? signup,
    TResult Function(FailedAuth value)? failed,
    TResult Function(SuccessAuth value)? success,
    TResult Function(LogoutAuth value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutAuth implements AuthEvent {
  const factory LogoutAuth() = _$LogoutAuth;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthLoading initial({UserModel? usermodel}) {
    return AuthLoading(
      usermodel: usermodel,
    );
  }

  AuthLoaded load({UserModel? user}) {
    return AuthLoaded(
      user: user,
    );
  }

  AuthSubmit login({required UserModel user}) {
    return AuthSubmit(
      user: user,
    );
  }

  AuthSignup signup({required UserModel user}) {
    return AuthSignup(
      user: user,
    );
  }

  AuthSuccess success({required UserModel user}) {
    return AuthSuccess(
      user: user,
    );
  }

  AuthFailed failed({String? message}) {
    return AuthFailed(
      message: message,
    );
  }

  AuthLogout logout({required UserModel user}) {
    return AuthLogout(
      user: user,
    );
  }

  AuthAuto autologin() {
    return const AuthAuto();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthLoadingCopyWith<$Res> {
  factory $AuthLoadingCopyWith(
          AuthLoading value, $Res Function(AuthLoading) then) =
      _$AuthLoadingCopyWithImpl<$Res>;
  $Res call({UserModel? usermodel});
}

/// @nodoc
class _$AuthLoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadingCopyWith<$Res> {
  _$AuthLoadingCopyWithImpl(
      AuthLoading _value, $Res Function(AuthLoading) _then)
      : super(_value, (v) => _then(v as AuthLoading));

  @override
  AuthLoading get _value => super._value as AuthLoading;

  @override
  $Res call({
    Object? usermodel = freezed,
  }) {
    return _then(AuthLoading(
      usermodel: usermodel == freezed
          ? _value.usermodel
          : usermodel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$AuthLoading implements AuthLoading {
  const _$AuthLoading({this.usermodel});

  @override
  final UserModel? usermodel;

  @override
  String toString() {
    return 'AuthState.initial(usermodel: $usermodel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoading &&
            const DeepCollectionEquality().equals(other.usermodel, usermodel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(usermodel));

  @JsonKey(ignore: true)
  @override
  $AuthLoadingCopyWith<AuthLoading> get copyWith =>
      _$AuthLoadingCopyWithImpl<AuthLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return initial(usermodel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return initial?.call(usermodel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(usermodel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading({UserModel? usermodel}) = _$AuthLoading;

  UserModel? get usermodel;
  @JsonKey(ignore: true)
  $AuthLoadingCopyWith<AuthLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoadedCopyWith<$Res> {
  factory $AuthLoadedCopyWith(
          AuthLoaded value, $Res Function(AuthLoaded) then) =
      _$AuthLoadedCopyWithImpl<$Res>;
  $Res call({UserModel? user});
}

/// @nodoc
class _$AuthLoadedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadedCopyWith<$Res> {
  _$AuthLoadedCopyWithImpl(AuthLoaded _value, $Res Function(AuthLoaded) _then)
      : super(_value, (v) => _then(v as AuthLoaded));

  @override
  AuthLoaded get _value => super._value as AuthLoaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthLoaded(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$AuthLoaded implements AuthLoaded {
  const _$AuthLoaded({this.user});

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'AuthState.load(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoaded &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthLoadedCopyWith<AuthLoaded> get copyWith =>
      _$AuthLoadedCopyWithImpl<AuthLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return load(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return load?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class AuthLoaded implements AuthState {
  const factory AuthLoaded({UserModel? user}) = _$AuthLoaded;

  UserModel? get user;
  @JsonKey(ignore: true)
  $AuthLoadedCopyWith<AuthLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSubmitCopyWith<$Res> {
  factory $AuthSubmitCopyWith(
          AuthSubmit value, $Res Function(AuthSubmit) then) =
      _$AuthSubmitCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

/// @nodoc
class _$AuthSubmitCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthSubmitCopyWith<$Res> {
  _$AuthSubmitCopyWithImpl(AuthSubmit _value, $Res Function(AuthSubmit) _then)
      : super(_value, (v) => _then(v as AuthSubmit));

  @override
  AuthSubmit get _value => super._value as AuthSubmit;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthSubmit(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AuthSubmit implements AuthSubmit {
  const _$AuthSubmit({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.login(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSubmit &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthSubmitCopyWith<AuthSubmit> get copyWith =>
      _$AuthSubmitCopyWithImpl<AuthSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class AuthSubmit implements AuthState {
  const factory AuthSubmit({required UserModel user}) = _$AuthSubmit;

  UserModel get user;
  @JsonKey(ignore: true)
  $AuthSubmitCopyWith<AuthSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignupCopyWith<$Res> {
  factory $AuthSignupCopyWith(
          AuthSignup value, $Res Function(AuthSignup) then) =
      _$AuthSignupCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

/// @nodoc
class _$AuthSignupCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthSignupCopyWith<$Res> {
  _$AuthSignupCopyWithImpl(AuthSignup _value, $Res Function(AuthSignup) _then)
      : super(_value, (v) => _then(v as AuthSignup));

  @override
  AuthSignup get _value => super._value as AuthSignup;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthSignup(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AuthSignup implements AuthSignup {
  const _$AuthSignup({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.signup(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSignup &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthSignupCopyWith<AuthSignup> get copyWith =>
      _$AuthSignupCopyWithImpl<AuthSignup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return signup(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return signup?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class AuthSignup implements AuthState {
  const factory AuthSignup({required UserModel user}) = _$AuthSignup;

  UserModel get user;
  @JsonKey(ignore: true)
  $AuthSignupCopyWith<AuthSignup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSuccessCopyWith<$Res> {
  factory $AuthSuccessCopyWith(
          AuthSuccess value, $Res Function(AuthSuccess) then) =
      _$AuthSuccessCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

/// @nodoc
class _$AuthSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthSuccessCopyWith<$Res> {
  _$AuthSuccessCopyWithImpl(
      AuthSuccess _value, $Res Function(AuthSuccess) _then)
      : super(_value, (v) => _then(v as AuthSuccess));

  @override
  AuthSuccess get _value => super._value as AuthSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthSuccess(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AuthSuccess implements AuthSuccess {
  const _$AuthSuccess({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthSuccessCopyWith<AuthSuccess> get copyWith =>
      _$AuthSuccessCopyWithImpl<AuthSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthSuccess implements AuthState {
  const factory AuthSuccess({required UserModel user}) = _$AuthSuccess;

  UserModel get user;
  @JsonKey(ignore: true)
  $AuthSuccessCopyWith<AuthSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailedCopyWith<$Res> {
  factory $AuthFailedCopyWith(
          AuthFailed value, $Res Function(AuthFailed) then) =
      _$AuthFailedCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$AuthFailedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthFailedCopyWith<$Res> {
  _$AuthFailedCopyWithImpl(AuthFailed _value, $Res Function(AuthFailed) _then)
      : super(_value, (v) => _then(v as AuthFailed));

  @override
  AuthFailed get _value => super._value as AuthFailed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AuthFailed(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailed implements AuthFailed {
  const _$AuthFailed({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthFailed &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $AuthFailedCopyWith<AuthFailed> get copyWith =>
      _$AuthFailedCopyWithImpl<AuthFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class AuthFailed implements AuthState {
  const factory AuthFailed({String? message}) = _$AuthFailed;

  String? get message;
  @JsonKey(ignore: true)
  $AuthFailedCopyWith<AuthFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogoutCopyWith<$Res> {
  factory $AuthLogoutCopyWith(
          AuthLogout value, $Res Function(AuthLogout) then) =
      _$AuthLogoutCopyWithImpl<$Res>;
  $Res call({UserModel user});
}

/// @nodoc
class _$AuthLogoutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLogoutCopyWith<$Res> {
  _$AuthLogoutCopyWithImpl(AuthLogout _value, $Res Function(AuthLogout) _then)
      : super(_value, (v) => _then(v as AuthLogout));

  @override
  AuthLogout get _value => super._value as AuthLogout;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthLogout(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AuthLogout implements AuthLogout {
  const _$AuthLogout({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.logout(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLogout &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthLogoutCopyWith<AuthLogout> get copyWith =>
      _$AuthLogoutCopyWithImpl<AuthLogout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return logout(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return logout?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogout implements AuthState {
  const factory AuthLogout({required UserModel user}) = _$AuthLogout;

  UserModel get user;
  @JsonKey(ignore: true)
  $AuthLogoutCopyWith<AuthLogout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthAutoCopyWith<$Res> {
  factory $AuthAutoCopyWith(AuthAuto value, $Res Function(AuthAuto) then) =
      _$AuthAutoCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthAutoCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthAutoCopyWith<$Res> {
  _$AuthAutoCopyWithImpl(AuthAuto _value, $Res Function(AuthAuto) _then)
      : super(_value, (v) => _then(v as AuthAuto));

  @override
  AuthAuto get _value => super._value as AuthAuto;
}

/// @nodoc

class _$AuthAuto implements AuthAuto {
  const _$AuthAuto();

  @override
  String toString() {
    return 'AuthState.autologin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthAuto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel? usermodel) initial,
    required TResult Function(UserModel? user) load,
    required TResult Function(UserModel user) login,
    required TResult Function(UserModel user) signup,
    required TResult Function(UserModel user) success,
    required TResult Function(String? message) failed,
    required TResult Function(UserModel user) logout,
    required TResult Function() autologin,
  }) {
    return autologin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
  }) {
    return autologin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel? usermodel)? initial,
    TResult Function(UserModel? user)? load,
    TResult Function(UserModel user)? login,
    TResult Function(UserModel user)? signup,
    TResult Function(UserModel user)? success,
    TResult Function(String? message)? failed,
    TResult Function(UserModel user)? logout,
    TResult Function()? autologin,
    required TResult orElse(),
  }) {
    if (autologin != null) {
      return autologin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoading value) initial,
    required TResult Function(AuthLoaded value) load,
    required TResult Function(AuthSubmit value) login,
    required TResult Function(AuthSignup value) signup,
    required TResult Function(AuthSuccess value) success,
    required TResult Function(AuthFailed value) failed,
    required TResult Function(AuthLogout value) logout,
    required TResult Function(AuthAuto value) autologin,
  }) {
    return autologin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
  }) {
    return autologin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoading value)? initial,
    TResult Function(AuthLoaded value)? load,
    TResult Function(AuthSubmit value)? login,
    TResult Function(AuthSignup value)? signup,
    TResult Function(AuthSuccess value)? success,
    TResult Function(AuthFailed value)? failed,
    TResult Function(AuthLogout value)? logout,
    TResult Function(AuthAuto value)? autologin,
    required TResult orElse(),
  }) {
    if (autologin != null) {
      return autologin(this);
    }
    return orElse();
  }
}

abstract class AuthAuto implements AuthState {
  const factory AuthAuto() = _$AuthAuto;
}
