part of 'drop_down_bloc.dart';

class DropDownState extends Equatable {
  final bool isRememberMe;
  const DropDownState({this.isRememberMe = false,});

  DropDownState copyWith({
    bool? isRememberMe,
  }) {
    return DropDownState(
      isRememberMe: isRememberMe ?? this.isRememberMe,
    );
  }


  
  @override
  List<Object> get props => [isRememberMe];
}
