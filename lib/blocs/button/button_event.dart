part of 'button_bloc.dart';

abstract class ButtonEvent extends Equatable {
  final int index;
  const ButtonEvent({required this.index});

  @override
  List<Object> get props => [];
}

class ButtonInitial extends ButtonEvent {
  const ButtonInitial({required int index}) : super(index: index);
  @override
  List<Object> get props => [];
}

class ButtonPressedNext extends ButtonEvent {
  const ButtonPressedNext({required int index}) : super(index: index);

  @override
  List<Object> get props => [index];
}

class ButtonPressedBefore extends ButtonEvent {
  const ButtonPressedBefore({required int index}) : super(index: index);

  @override
  List<Object> get props => [index];
}
