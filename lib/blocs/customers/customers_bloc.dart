import 'package:bloc/bloc.dart';
import 'package:bloc_advance/models/customers_model.dart';
import 'package:bloc_advance/models/customers_receive.dart';
import 'package:bloc_advance/services/db_helper.dart';
import 'package:equatable/equatable.dart';

part 'customers_event.dart';
part 'customers_state.dart';

class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  CustomersBloc() : super(CustomersLoading()) {
    on<LoadCustomers>(_onLoad);
    on<AddCustomers>(_onAdd);
    on<DeleteCustomers>(_onDelete);
  }

  _onLoad(LoadCustomers event, Emitter<CustomersState> emit) async {
    var result = await DbHelper.getCustomers();
    emit(CustomersLoaded(customers: result));
  }

  _onAdd(AddCustomers event, Emitter<CustomersState> emit) async {
    await DbHelper.createCustomer(event.customer);
    var retrieve = await DbHelper.getCustomers();
    emit(CustomersSuccess());
    emit(CustomersLoaded(customers: retrieve));
  }

  _onDelete(DeleteCustomers event, Emitter<CustomersState> emit) async {
    await DbHelper.delete(event.customer);
    var res = await DbHelper.getCustomers();
    emit(CustomersLoaded(customers: res));
  }
}
