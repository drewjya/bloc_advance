part of 'customers_bloc.dart';

abstract class CustomersState extends Equatable {
  const CustomersState();

  @override
  List<Object> get props => [];
}

class CustomersLoading extends CustomersState {}

class CustomersSuccess extends CustomersState {}

class CustomersFailed extends CustomersState {}

class CustomersLoaded extends CustomersState {
  final List<CustomerReceive> customers;
  const CustomersLoaded({
    required this.customers,
  });
  @override
  List<Object> get props => [customers];
}
