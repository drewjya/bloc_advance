part of 'customers_bloc.dart';

abstract class CustomersEvent extends Equatable {
  const CustomersEvent();

  @override
  List<Object> get props => [];
}

class LoadCustomers extends CustomersEvent {
  final List<CustomerReceive> customers;
  const LoadCustomers({
    this.customers = const <CustomerReceive>[],
  });

  @override
  List<Object> get props => [customers];
}

class AddCustomers extends CustomersEvent {
  final Customers customer;
  const AddCustomers({
    required this.customer,
  });

  @override
  List<Object> get props => [customer];
}

class DeleteCustomers extends CustomersEvent {
  final CustomerReceive customer;
  const DeleteCustomers({
    required this.customer,
  });

  @override
  List<Object> get props => [customer];
}
