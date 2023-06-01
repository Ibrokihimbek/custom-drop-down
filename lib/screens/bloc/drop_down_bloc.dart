import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'drop_down_event.dart';
part 'drop_down_state.dart';

class DropDownBloc extends Bloc<DropDownEvent, DropDownState> {
  DropDownBloc() : super(const DropDownState()) {
    on<DropDowntStateChangeEvent>(_rememberUser);
  }

  void _rememberUser(
      DropDowntStateChangeEvent event, Emitter<DropDownState> emit) {
    emit(state.copyWith(isRememberMe: !state.isRememberMe));
  }
}
