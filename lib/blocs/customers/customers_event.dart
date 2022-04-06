part of 'customers_bloc.dart';

@freezed
class CustomersEvent with _$CustomersEvent {
  const factory CustomersEvent.loadCustomers(
          {@Default(<CustomerReceive>[]) List<CustomerReceive> customers}) =
      LoadCustomers;
  const factory CustomersEvent.buttonState({@Default(1) int value}) =
      ButtonCustomers;
  const factory CustomersEvent.addCustomers({required Customers customer}) =
      AddCustomers;
  const factory CustomersEvent.addPicture({
    required int value,
  }) = AddPicture;
  const factory CustomersEvent.deleteCustomers(
      {required CustomerReceive customerReceive}) = DeleteCustomer;
  // const factory CustomersEvent.updateCustomers({required Customers customer}) = UpdateCustomers;
  // const factory CustomersEvent.deleteCustomers({required Customers customer}) = DeleteCustomers;
}
