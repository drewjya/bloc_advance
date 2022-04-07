import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'button_event.dart';
part 'button_state.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(const ButtonValue(initValue: 0)) {
    on<ButtonInitial>(_onButtonInit);
    on<ButtonPressedNext>(_onPressedNext);
    on<ButtonPressedBefore>(_onPressedBefore);
  }

  _onButtonInit(ButtonInitial event, Emitter<ButtonState> emit) {
    
    emit(ButtonValue(initValue: event.index));
  }

  _onPressedNext(ButtonPressedNext event, Emitter<ButtonState> emit) {
    if (event.index < 3) {
      emit(ButtonValue(initValue: event.index + 1));
    }
  }

  _onPressedBefore(ButtonPressedBefore event, Emitter<ButtonState> emit) {
    if (event.index > 1) {
      emit(ButtonValue(initValue: event.index - 1));
    }
  }
}
