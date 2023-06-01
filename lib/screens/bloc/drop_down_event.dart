part of 'drop_down_bloc.dart';

abstract class DropDownEvent extends Equatable {
  const DropDownEvent();
}

class DropDowntStateChangeEvent extends DropDownEvent {
  const DropDowntStateChangeEvent();
  @override
  List<Object?> get props => [];
}
