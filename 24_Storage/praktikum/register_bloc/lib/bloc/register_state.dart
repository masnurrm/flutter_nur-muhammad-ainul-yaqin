part of 'register_bloc.dart';

@immutable
abstract class RegisterState extends Equatable{

  @override
  List<Object?> get props => List.empty();
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final AccountModel? account;
  final bool? statusAction;
  final bool? isLogin;

  RegisterSuccess({
    this.account,
    this.statusAction,
    this.isLogin,
  });

  @override
  List<Object?> get props => [account, statusAction, isLogin];
}