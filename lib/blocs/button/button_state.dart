part of 'button_bloc.dart';

abstract class ButtonState extends Equatable {
  const ButtonState({required this.initValue});
  final int initValue;
  @override
  List<Object> get props => [initValue];
}

class ButtonValue extends ButtonState {
  const ButtonValue({required int initValue}) : super(initValue: initValue);
  @override
  List<Object> get props => [initValue];
}
