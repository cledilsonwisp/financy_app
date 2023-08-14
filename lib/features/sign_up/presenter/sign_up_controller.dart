import 'dart:developer';

import 'package:financy_app/features/sign_up/presenter/sign_up_state.dart';
import 'package:flutter/material.dart';

class SignUpControllerClass extends ChangeNotifier {
  SignUpState _state = SignUpStartedState();
  SignUpState get state => _state;

  void _changeState(SignUpState newState) {
    _state = newState;
    notifyListeners();
  }

  Future<bool> doSignUp() async {
    _changeState(SignUpLoadingState());

    try {
      await Future.delayed(const Duration(seconds: 2));
      // throw Exception();
      log('Usuário Logado');
      _changeState(SignUpSuccessState());
      return true;
    } catch (e) {
      _changeState(SignUpErrorState());
      return false;
    }
  }
}
