// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomersEventTearOff {
  const _$CustomersEventTearOff();

  LoadCustomers loadCustomers(
      {List<CustomerReceive> customers = const <CustomerReceive>[]}) {
    return LoadCustomers(
      customers: customers,
    );
  }

  ButtonCustomers buttonState({int value = 1}) {
    return ButtonCustomers(
      value: value,
    );
  }

  AddCustomers addCustomers({required Customers customer}) {
    return AddCustomers(
      customer: customer,
    );
  }

  AddPicture addPicture({required int value}) {
    return AddPicture(
      value: value,
    );
  }

  DeleteCustomer deleteCustomers({required CustomerReceive customerReceive}) {
    return DeleteCustomer(
      customerReceive: customerReceive,
    );
  }
}

/// @nodoc
const $CustomersEvent = _$CustomersEventTearOff();

/// @nodoc
mixin _$CustomersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerReceive> customers) loadCustomers,
    required TResult Function(int value) buttonState,
    required TResult Function(Customers customer) addCustomers,
    required TResult Function(int value) addPicture,
    required TResult Function(CustomerReceive customerReceive) deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCustomers value) loadCustomers,
    required TResult Function(ButtonCustomers value) buttonState,
    required TResult Function(AddCustomers value) addCustomers,
    required TResult Function(AddPicture value) addPicture,
    required TResult Function(DeleteCustomer value) deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersEventCopyWith<$Res> {
  factory $CustomersEventCopyWith(
          CustomersEvent value, $Res Function(CustomersEvent) then) =
      _$CustomersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomersEventCopyWithImpl<$Res>
    implements $CustomersEventCopyWith<$Res> {
  _$CustomersEventCopyWithImpl(this._value, this._then);

  final CustomersEvent _value;
  // ignore: unused_field
  final $Res Function(CustomersEvent) _then;
}

/// @nodoc
abstract class $LoadCustomersCopyWith<$Res> {
  factory $LoadCustomersCopyWith(
          LoadCustomers value, $Res Function(LoadCustomers) then) =
      _$LoadCustomersCopyWithImpl<$Res>;
  $Res call({List<CustomerReceive> customers});
}

/// @nodoc
class _$LoadCustomersCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res>
    implements $LoadCustomersCopyWith<$Res> {
  _$LoadCustomersCopyWithImpl(
      LoadCustomers _value, $Res Function(LoadCustomers) _then)
      : super(_value, (v) => _then(v as LoadCustomers));

  @override
  LoadCustomers get _value => super._value as LoadCustomers;

  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(LoadCustomers(
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerReceive>,
    ));
  }
}

/// @nodoc

class _$LoadCustomers implements LoadCustomers {
  const _$LoadCustomers({this.customers = const <CustomerReceive>[]});

  @JsonKey()
  @override
  final List<CustomerReceive> customers;

  @override
  String toString() {
    return 'CustomersEvent.loadCustomers(customers: $customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadCustomers &&
            const DeepCollectionEquality().equals(other.customers, customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customers));

  @JsonKey(ignore: true)
  @override
  $LoadCustomersCopyWith<LoadCustomers> get copyWith =>
      _$LoadCustomersCopyWithImpl<LoadCustomers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerReceive> customers) loadCustomers,
    required TResult Function(int value) buttonState,
    required TResult Function(Customers customer) addCustomers,
    required TResult Function(int value) addPicture,
    required TResult Function(CustomerReceive customerReceive) deleteCustomers,
  }) {
    return loadCustomers(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
  }) {
    return loadCustomers?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (loadCustomers != null) {
      return loadCustomers(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCustomers value) loadCustomers,
    required TResult Function(ButtonCustomers value) buttonState,
    required TResult Function(AddCustomers value) addCustomers,
    required TResult Function(AddPicture value) addPicture,
    required TResult Function(DeleteCustomer value) deleteCustomers,
  }) {
    return loadCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
  }) {
    return loadCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (loadCustomers != null) {
      return loadCustomers(this);
    }
    return orElse();
  }
}

abstract class LoadCustomers implements CustomersEvent {
  const factory LoadCustomers({List<CustomerReceive> customers}) =
      _$LoadCustomers;

  List<CustomerReceive> get customers;
  @JsonKey(ignore: true)
  $LoadCustomersCopyWith<LoadCustomers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonCustomersCopyWith<$Res> {
  factory $ButtonCustomersCopyWith(
          ButtonCustomers value, $Res Function(ButtonCustomers) then) =
      _$ButtonCustomersCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$ButtonCustomersCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res>
    implements $ButtonCustomersCopyWith<$Res> {
  _$ButtonCustomersCopyWithImpl(
      ButtonCustomers _value, $Res Function(ButtonCustomers) _then)
      : super(_value, (v) => _then(v as ButtonCustomers));

  @override
  ButtonCustomers get _value => super._value as ButtonCustomers;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ButtonCustomers(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ButtonCustomers implements ButtonCustomers {
  const _$ButtonCustomers({this.value = 1});

  @JsonKey()
  @override
  final int value;

  @override
  String toString() {
    return 'CustomersEvent.buttonState(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ButtonCustomers &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $ButtonCustomersCopyWith<ButtonCustomers> get copyWith =>
      _$ButtonCustomersCopyWithImpl<ButtonCustomers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerReceive> customers) loadCustomers,
    required TResult Function(int value) buttonState,
    required TResult Function(Customers customer) addCustomers,
    required TResult Function(int value) addPicture,
    required TResult Function(CustomerReceive customerReceive) deleteCustomers,
  }) {
    return buttonState(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
  }) {
    return buttonState?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (buttonState != null) {
      return buttonState(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCustomers value) loadCustomers,
    required TResult Function(ButtonCustomers value) buttonState,
    required TResult Function(AddCustomers value) addCustomers,
    required TResult Function(AddPicture value) addPicture,
    required TResult Function(DeleteCustomer value) deleteCustomers,
  }) {
    return buttonState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
  }) {
    return buttonState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (buttonState != null) {
      return buttonState(this);
    }
    return orElse();
  }
}

abstract class ButtonCustomers implements CustomersEvent {
  const factory ButtonCustomers({int value}) = _$ButtonCustomers;

  int get value;
  @JsonKey(ignore: true)
  $ButtonCustomersCopyWith<ButtonCustomers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomersCopyWith<$Res> {
  factory $AddCustomersCopyWith(
          AddCustomers value, $Res Function(AddCustomers) then) =
      _$AddCustomersCopyWithImpl<$Res>;
  $Res call({Customers customer});
}

/// @nodoc
class _$AddCustomersCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res>
    implements $AddCustomersCopyWith<$Res> {
  _$AddCustomersCopyWithImpl(
      AddCustomers _value, $Res Function(AddCustomers) _then)
      : super(_value, (v) => _then(v as AddCustomers));

  @override
  AddCustomers get _value => super._value as AddCustomers;

  @override
  $Res call({
    Object? customer = freezed,
  }) {
    return _then(AddCustomers(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customers,
    ));
  }
}

/// @nodoc

class _$AddCustomers implements AddCustomers {
  const _$AddCustomers({required this.customer});

  @override
  final Customers customer;

  @override
  String toString() {
    return 'CustomersEvent.addCustomers(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddCustomers &&
            const DeepCollectionEquality().equals(other.customer, customer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customer));

  @JsonKey(ignore: true)
  @override
  $AddCustomersCopyWith<AddCustomers> get copyWith =>
      _$AddCustomersCopyWithImpl<AddCustomers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerReceive> customers) loadCustomers,
    required TResult Function(int value) buttonState,
    required TResult Function(Customers customer) addCustomers,
    required TResult Function(int value) addPicture,
    required TResult Function(CustomerReceive customerReceive) deleteCustomers,
  }) {
    return addCustomers(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
  }) {
    return addCustomers?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (addCustomers != null) {
      return addCustomers(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCustomers value) loadCustomers,
    required TResult Function(ButtonCustomers value) buttonState,
    required TResult Function(AddCustomers value) addCustomers,
    required TResult Function(AddPicture value) addPicture,
    required TResult Function(DeleteCustomer value) deleteCustomers,
  }) {
    return addCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
  }) {
    return addCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (addCustomers != null) {
      return addCustomers(this);
    }
    return orElse();
  }
}

abstract class AddCustomers implements CustomersEvent {
  const factory AddCustomers({required Customers customer}) = _$AddCustomers;

  Customers get customer;
  @JsonKey(ignore: true)
  $AddCustomersCopyWith<AddCustomers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPictureCopyWith<$Res> {
  factory $AddPictureCopyWith(
          AddPicture value, $Res Function(AddPicture) then) =
      _$AddPictureCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$AddPictureCopyWithImpl<$Res> extends _$CustomersEventCopyWithImpl<$Res>
    implements $AddPictureCopyWith<$Res> {
  _$AddPictureCopyWithImpl(AddPicture _value, $Res Function(AddPicture) _then)
      : super(_value, (v) => _then(v as AddPicture));

  @override
  AddPicture get _value => super._value as AddPicture;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AddPicture(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddPicture implements AddPicture {
  const _$AddPicture({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'CustomersEvent.addPicture(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddPicture &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $AddPictureCopyWith<AddPicture> get copyWith =>
      _$AddPictureCopyWithImpl<AddPicture>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerReceive> customers) loadCustomers,
    required TResult Function(int value) buttonState,
    required TResult Function(Customers customer) addCustomers,
    required TResult Function(int value) addPicture,
    required TResult Function(CustomerReceive customerReceive) deleteCustomers,
  }) {
    return addPicture(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
  }) {
    return addPicture?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (addPicture != null) {
      return addPicture(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCustomers value) loadCustomers,
    required TResult Function(ButtonCustomers value) buttonState,
    required TResult Function(AddCustomers value) addCustomers,
    required TResult Function(AddPicture value) addPicture,
    required TResult Function(DeleteCustomer value) deleteCustomers,
  }) {
    return addPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
  }) {
    return addPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (addPicture != null) {
      return addPicture(this);
    }
    return orElse();
  }
}

abstract class AddPicture implements CustomersEvent {
  const factory AddPicture({required int value}) = _$AddPicture;

  int get value;
  @JsonKey(ignore: true)
  $AddPictureCopyWith<AddPicture> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCustomerCopyWith<$Res> {
  factory $DeleteCustomerCopyWith(
          DeleteCustomer value, $Res Function(DeleteCustomer) then) =
      _$DeleteCustomerCopyWithImpl<$Res>;
  $Res call({CustomerReceive customerReceive});
}

/// @nodoc
class _$DeleteCustomerCopyWithImpl<$Res>
    extends _$CustomersEventCopyWithImpl<$Res>
    implements $DeleteCustomerCopyWith<$Res> {
  _$DeleteCustomerCopyWithImpl(
      DeleteCustomer _value, $Res Function(DeleteCustomer) _then)
      : super(_value, (v) => _then(v as DeleteCustomer));

  @override
  DeleteCustomer get _value => super._value as DeleteCustomer;

  @override
  $Res call({
    Object? customerReceive = freezed,
  }) {
    return _then(DeleteCustomer(
      customerReceive: customerReceive == freezed
          ? _value.customerReceive
          : customerReceive // ignore: cast_nullable_to_non_nullable
              as CustomerReceive,
    ));
  }
}

/// @nodoc

class _$DeleteCustomer implements DeleteCustomer {
  const _$DeleteCustomer({required this.customerReceive});

  @override
  final CustomerReceive customerReceive;

  @override
  String toString() {
    return 'CustomersEvent.deleteCustomers(customerReceive: $customerReceive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteCustomer &&
            const DeepCollectionEquality()
                .equals(other.customerReceive, customerReceive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(customerReceive));

  @JsonKey(ignore: true)
  @override
  $DeleteCustomerCopyWith<DeleteCustomer> get copyWith =>
      _$DeleteCustomerCopyWithImpl<DeleteCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerReceive> customers) loadCustomers,
    required TResult Function(int value) buttonState,
    required TResult Function(Customers customer) addCustomers,
    required TResult Function(int value) addPicture,
    required TResult Function(CustomerReceive customerReceive) deleteCustomers,
  }) {
    return deleteCustomers(customerReceive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
  }) {
    return deleteCustomers?.call(customerReceive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerReceive> customers)? loadCustomers,
    TResult Function(int value)? buttonState,
    TResult Function(Customers customer)? addCustomers,
    TResult Function(int value)? addPicture,
    TResult Function(CustomerReceive customerReceive)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (deleteCustomers != null) {
      return deleteCustomers(customerReceive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCustomers value) loadCustomers,
    required TResult Function(ButtonCustomers value) buttonState,
    required TResult Function(AddCustomers value) addCustomers,
    required TResult Function(AddPicture value) addPicture,
    required TResult Function(DeleteCustomer value) deleteCustomers,
  }) {
    return deleteCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
  }) {
    return deleteCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCustomers value)? loadCustomers,
    TResult Function(ButtonCustomers value)? buttonState,
    TResult Function(AddCustomers value)? addCustomers,
    TResult Function(AddPicture value)? addPicture,
    TResult Function(DeleteCustomer value)? deleteCustomers,
    required TResult orElse(),
  }) {
    if (deleteCustomers != null) {
      return deleteCustomers(this);
    }
    return orElse();
  }
}

abstract class DeleteCustomer implements CustomersEvent {
  const factory DeleteCustomer({required CustomerReceive customerReceive}) =
      _$DeleteCustomer;

  CustomerReceive get customerReceive;
  @JsonKey(ignore: true)
  $DeleteCustomerCopyWith<DeleteCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CustomersStateTearOff {
  const _$CustomersStateTearOff();

  CustomersLoading initial() {
    return const CustomersLoading();
  }

  CustomersLoaded loaded(
      {List<CustomerReceive> customers = const <CustomerReceive>[]}) {
    return CustomersLoaded(
      customers: customers,
    );
  }

  CustomersButton buttonVal({int value = 0}) {
    return CustomersButton(
      value: value,
    );
  }

  CustomersAddButton addImage(
      {File? text = null, required int value, String? path = null}) {
    return CustomersAddButton(
      text: text,
      value: value,
      path: path,
    );
  }

  CustomersFailed failed({bool failed = false}) {
    return CustomersFailed(
      failed: failed,
    );
  }
}

/// @nodoc
const $CustomersState = _$CustomersStateTearOff();

/// @nodoc
mixin _$CustomersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CustomerReceive> customers) loaded,
    required TResult Function(int value) buttonVal,
    required TResult Function(File? text, int value, String? path) addImage,
    required TResult Function(bool failed) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersLoading value) initial,
    required TResult Function(CustomersLoaded value) loaded,
    required TResult Function(CustomersButton value) buttonVal,
    required TResult Function(CustomersAddButton value) addImage,
    required TResult Function(CustomersFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersStateCopyWith<$Res> {
  factory $CustomersStateCopyWith(
          CustomersState value, $Res Function(CustomersState) then) =
      _$CustomersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomersStateCopyWithImpl<$Res>
    implements $CustomersStateCopyWith<$Res> {
  _$CustomersStateCopyWithImpl(this._value, this._then);

  final CustomersState _value;
  // ignore: unused_field
  final $Res Function(CustomersState) _then;
}

/// @nodoc
abstract class $CustomersLoadingCopyWith<$Res> {
  factory $CustomersLoadingCopyWith(
          CustomersLoading value, $Res Function(CustomersLoading) then) =
      _$CustomersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomersLoadingCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res>
    implements $CustomersLoadingCopyWith<$Res> {
  _$CustomersLoadingCopyWithImpl(
      CustomersLoading _value, $Res Function(CustomersLoading) _then)
      : super(_value, (v) => _then(v as CustomersLoading));

  @override
  CustomersLoading get _value => super._value as CustomersLoading;
}

/// @nodoc

class _$CustomersLoading implements CustomersLoading {
  const _$CustomersLoading();

  @override
  String toString() {
    return 'CustomersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CustomerReceive> customers) loaded,
    required TResult Function(int value) buttonVal,
    required TResult Function(File? text, int value, String? path) addImage,
    required TResult Function(bool failed) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersLoading value) initial,
    required TResult Function(CustomersLoaded value) loaded,
    required TResult Function(CustomersButton value) buttonVal,
    required TResult Function(CustomersAddButton value) addImage,
    required TResult Function(CustomersFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CustomersLoading implements CustomersState {
  const factory CustomersLoading() = _$CustomersLoading;
}

/// @nodoc
abstract class $CustomersLoadedCopyWith<$Res> {
  factory $CustomersLoadedCopyWith(
          CustomersLoaded value, $Res Function(CustomersLoaded) then) =
      _$CustomersLoadedCopyWithImpl<$Res>;
  $Res call({List<CustomerReceive> customers});
}

/// @nodoc
class _$CustomersLoadedCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res>
    implements $CustomersLoadedCopyWith<$Res> {
  _$CustomersLoadedCopyWithImpl(
      CustomersLoaded _value, $Res Function(CustomersLoaded) _then)
      : super(_value, (v) => _then(v as CustomersLoaded));

  @override
  CustomersLoaded get _value => super._value as CustomersLoaded;

  @override
  $Res call({
    Object? customers = freezed,
  }) {
    return _then(CustomersLoaded(
      customers: customers == freezed
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerReceive>,
    ));
  }
}

/// @nodoc

class _$CustomersLoaded implements CustomersLoaded {
  const _$CustomersLoaded({this.customers = const <CustomerReceive>[]});

  @JsonKey()
  @override
  final List<CustomerReceive> customers;

  @override
  String toString() {
    return 'CustomersState.loaded(customers: $customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomersLoaded &&
            const DeepCollectionEquality().equals(other.customers, customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customers));

  @JsonKey(ignore: true)
  @override
  $CustomersLoadedCopyWith<CustomersLoaded> get copyWith =>
      _$CustomersLoadedCopyWithImpl<CustomersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CustomerReceive> customers) loaded,
    required TResult Function(int value) buttonVal,
    required TResult Function(File? text, int value, String? path) addImage,
    required TResult Function(bool failed) failed,
  }) {
    return loaded(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
  }) {
    return loaded?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersLoading value) initial,
    required TResult Function(CustomersLoaded value) loaded,
    required TResult Function(CustomersButton value) buttonVal,
    required TResult Function(CustomersAddButton value) addImage,
    required TResult Function(CustomersFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CustomersLoaded implements CustomersState {
  const factory CustomersLoaded({List<CustomerReceive> customers}) =
      _$CustomersLoaded;

  List<CustomerReceive> get customers;
  @JsonKey(ignore: true)
  $CustomersLoadedCopyWith<CustomersLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersButtonCopyWith<$Res> {
  factory $CustomersButtonCopyWith(
          CustomersButton value, $Res Function(CustomersButton) then) =
      _$CustomersButtonCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$CustomersButtonCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res>
    implements $CustomersButtonCopyWith<$Res> {
  _$CustomersButtonCopyWithImpl(
      CustomersButton _value, $Res Function(CustomersButton) _then)
      : super(_value, (v) => _then(v as CustomersButton));

  @override
  CustomersButton get _value => super._value as CustomersButton;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(CustomersButton(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CustomersButton implements CustomersButton {
  const _$CustomersButton({this.value = 0});

  @JsonKey()
  @override
  final int value;

  @override
  String toString() {
    return 'CustomersState.buttonVal(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomersButton &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $CustomersButtonCopyWith<CustomersButton> get copyWith =>
      _$CustomersButtonCopyWithImpl<CustomersButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CustomerReceive> customers) loaded,
    required TResult Function(int value) buttonVal,
    required TResult Function(File? text, int value, String? path) addImage,
    required TResult Function(bool failed) failed,
  }) {
    return buttonVal(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
  }) {
    return buttonVal?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
    required TResult orElse(),
  }) {
    if (buttonVal != null) {
      return buttonVal(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersLoading value) initial,
    required TResult Function(CustomersLoaded value) loaded,
    required TResult Function(CustomersButton value) buttonVal,
    required TResult Function(CustomersAddButton value) addImage,
    required TResult Function(CustomersFailed value) failed,
  }) {
    return buttonVal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
  }) {
    return buttonVal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
    required TResult orElse(),
  }) {
    if (buttonVal != null) {
      return buttonVal(this);
    }
    return orElse();
  }
}

abstract class CustomersButton implements CustomersState {
  const factory CustomersButton({int value}) = _$CustomersButton;

  int get value;
  @JsonKey(ignore: true)
  $CustomersButtonCopyWith<CustomersButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersAddButtonCopyWith<$Res> {
  factory $CustomersAddButtonCopyWith(
          CustomersAddButton value, $Res Function(CustomersAddButton) then) =
      _$CustomersAddButtonCopyWithImpl<$Res>;
  $Res call({File? text, int value, String? path});
}

/// @nodoc
class _$CustomersAddButtonCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res>
    implements $CustomersAddButtonCopyWith<$Res> {
  _$CustomersAddButtonCopyWithImpl(
      CustomersAddButton _value, $Res Function(CustomersAddButton) _then)
      : super(_value, (v) => _then(v as CustomersAddButton));

  @override
  CustomersAddButton get _value => super._value as CustomersAddButton;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
    Object? path = freezed,
  }) {
    return _then(CustomersAddButton(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as File?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomersAddButton implements CustomersAddButton {
  const _$CustomersAddButton(
      {this.text = null, required this.value, this.path = null});

  @JsonKey()
  @override
  final File? text;
  @override
  final int value;
  @JsonKey()
  @override
  final String? path;

  @override
  String toString() {
    return 'CustomersState.addImage(text: $text, value: $value, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomersAddButton &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  $CustomersAddButtonCopyWith<CustomersAddButton> get copyWith =>
      _$CustomersAddButtonCopyWithImpl<CustomersAddButton>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CustomerReceive> customers) loaded,
    required TResult Function(int value) buttonVal,
    required TResult Function(File? text, int value, String? path) addImage,
    required TResult Function(bool failed) failed,
  }) {
    return addImage(text, value, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
  }) {
    return addImage?.call(text, value, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(text, value, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersLoading value) initial,
    required TResult Function(CustomersLoaded value) loaded,
    required TResult Function(CustomersButton value) buttonVal,
    required TResult Function(CustomersAddButton value) addImage,
    required TResult Function(CustomersFailed value) failed,
  }) {
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
  }) {
    return addImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class CustomersAddButton implements CustomersState {
  const factory CustomersAddButton(
      {File? text, required int value, String? path}) = _$CustomersAddButton;

  File? get text;
  int get value;
  String? get path;
  @JsonKey(ignore: true)
  $CustomersAddButtonCopyWith<CustomersAddButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersFailedCopyWith<$Res> {
  factory $CustomersFailedCopyWith(
          CustomersFailed value, $Res Function(CustomersFailed) then) =
      _$CustomersFailedCopyWithImpl<$Res>;
  $Res call({bool failed});
}

/// @nodoc
class _$CustomersFailedCopyWithImpl<$Res>
    extends _$CustomersStateCopyWithImpl<$Res>
    implements $CustomersFailedCopyWith<$Res> {
  _$CustomersFailedCopyWithImpl(
      CustomersFailed _value, $Res Function(CustomersFailed) _then)
      : super(_value, (v) => _then(v as CustomersFailed));

  @override
  CustomersFailed get _value => super._value as CustomersFailed;

  @override
  $Res call({
    Object? failed = freezed,
  }) {
    return _then(CustomersFailed(
      failed: failed == freezed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CustomersFailed implements CustomersFailed {
  const _$CustomersFailed({this.failed = false});

  @JsonKey()
  @override
  final bool failed;

  @override
  String toString() {
    return 'CustomersState.failed(failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomersFailed &&
            const DeepCollectionEquality().equals(other.failed, failed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failed));

  @JsonKey(ignore: true)
  @override
  $CustomersFailedCopyWith<CustomersFailed> get copyWith =>
      _$CustomersFailedCopyWithImpl<CustomersFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<CustomerReceive> customers) loaded,
    required TResult Function(int value) buttonVal,
    required TResult Function(File? text, int value, String? path) addImage,
    required TResult Function(bool failed) failed,
  }) {
    return failed(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
  }) {
    return failed?.call(this.failed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<CustomerReceive> customers)? loaded,
    TResult Function(int value)? buttonVal,
    TResult Function(File? text, int value, String? path)? addImage,
    TResult Function(bool failed)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this.failed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomersLoading value) initial,
    required TResult Function(CustomersLoaded value) loaded,
    required TResult Function(CustomersButton value) buttonVal,
    required TResult Function(CustomersAddButton value) addImage,
    required TResult Function(CustomersFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomersLoading value)? initial,
    TResult Function(CustomersLoaded value)? loaded,
    TResult Function(CustomersButton value)? buttonVal,
    TResult Function(CustomersAddButton value)? addImage,
    TResult Function(CustomersFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class CustomersFailed implements CustomersState {
  const factory CustomersFailed({bool failed}) = _$CustomersFailed;

  bool get failed;
  @JsonKey(ignore: true)
  $CustomersFailedCopyWith<CustomersFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
