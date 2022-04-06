part of 'customers_bloc.dart';

@freezed
class CustomersState with _$CustomersState {
  const factory CustomersState.initial() = CustomersLoading;
  const factory CustomersState.loaded(
      {@Default(<Customers>[]) List<CustomerReceive> customers}) = CustomersLoaded;
  const factory CustomersState.buttonVal({@Default(0) int value}) =
      CustomersButton;
  const factory CustomersState.addImage(
      {@Default(null) File? text,
      required int value,
      @Default(null) String? path}) = CustomersAddButton;
  const factory CustomersState.failed({@Default(false) bool failed}) =
      CustomersFailed;
  
}
