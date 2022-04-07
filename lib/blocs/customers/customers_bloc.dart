import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:bloc_advance/function/image_picker.dart';
import 'package:bloc_advance/models/customers_model.dart';
import 'package:bloc_advance/models/customers_receive.dart';
import 'package:bloc_advance/services/db_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customers_event.dart';
part 'customers_state.dart';
part 'customers_bloc.freezed.dart';

class CustomersBloc extends Bloc<CustomersEvent, CustomersState> {
  CustomersBloc() : super(const CustomersLoading()) {
    on<LoadCustomers>(_onLoadCustomers);
    on<AddCustomers>((_onAddCustomers));
    on<ButtonCustomers>(_onButton);
    on<AddPicture>(_onAddPicture);
    on<DeleteCustomer>(_onCustomerDelete);
    on<BeforeCustomers>(_onBefore);
    // on<UpdateCustomers>(_onUpdateCustomers);
    // on<DeleteCustomers>(_onDeleteCustomers);
  }

  void _onBefore(BeforeCustomers event, Emitter<CustomersState> emit) {
    if (event.value != 1) {
      emit(CustomersButton(value: event.value - 1));
    }
  }

  void _onButton(ButtonCustomers event, Emitter<CustomersState> emit) async {
    if (event.value != 3) {
      emit(const CustomersLoading());
      emit(CustomersButton(
        value: event.value + 1,
      ));
    }
  }

  void _onCustomerDelete(
      DeleteCustomer event, Emitter<CustomersState> emit) async {
    await DbHelper.delete(event.customerReceive);
    var result = await DbHelper.getCustomers();
    emit(CustomersLoaded(customers: result));
  }

  void _onLoadCustomers(
      LoadCustomers event, Emitter<CustomersState> emit) async {
    var result = await DbHelper.getCustomers();
    emit(CustomersLoaded(customers: result));
  }

  void _onAddCustomers(AddCustomers event, Emitter<CustomersState> emit) async {
    await DbHelper.createCustomer(event.customer);
    var retrieve = await DbHelper.getCustomers();
    emit(const CustomersSuccess());
    emit(CustomersLoaded(customers: retrieve));
  }

  void _onAddPicture(AddPicture event, Emitter<CustomersState> emit) async {
    final result = await pickImage();
    if (result != null &&
        (state is CustomersButton || state is CustomersAddButton)) {
      emit(
        CustomersAddButton(
          value: event.value,
          text: result[0],
          path: result[1],
        ),
      );
    } else {
      emit(CustomersAddButton(
        value: event.value,
      ));
      // emit(const CustomersFailed());
    }
  }
  // void _onUpdateCustomers(UpdateCustomers event, Emitter<CustomersState> emit) {
  //
  // }
  // void _onDeleteCustomers(DeleteCustomers event, Emitter<CustomersState> emit) {
  //
  // }
}
/*
* * 
*/