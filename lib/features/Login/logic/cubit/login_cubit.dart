import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/auth.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.onUserInteraction;
  AuthImple authImple = AuthImple();
  void logIn() async {
    emit(LoginLoading());

    try {
    await  authImple.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      emit(LoginSuccess());
    } on Exception catch (e) {
      emit(LoginFailer(errorMessage: e.toString()));
    }
  }
}
