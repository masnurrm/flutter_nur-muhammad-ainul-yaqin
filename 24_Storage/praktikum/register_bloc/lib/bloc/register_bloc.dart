// import 'dart:html';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../model/AccountModel.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  late SharedPref sharedPref;
  
  RegisterBloc() : super(RegisterInitial()) {
    // on<RegisterEvent>((event, emit) {
      sharedPref = SharedPref();
    // });
  }

  void getAccount() async {
    var account = await sharedPref.getAccount();
    var isLogin = await sharedPref.isLogin();
    emit(RegisterSuccess(account: account, isLogin: isLogin));
  }

  Future<bool> removeAccount() async {
    var status = await sharedPref.removeAccount();
    getAccount();
    return status;
  }

  Future<bool> createAccount(AccountModel account) async {
    var status = await sharedPref.saveAccount(account);
    getAccount();
    return status;
  }
}
