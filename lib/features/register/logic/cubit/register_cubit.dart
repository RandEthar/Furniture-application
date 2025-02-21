import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AuthImple authImple = AuthImple();
  AutovalidateMode autovalidateMode =AutovalidateMode.onUserInteraction;
  void register() async{
    emit(RegisterLoading());
    try {
        await authImple.sinUpWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFalier(textMassage: e.toString()));
    }
  }
}
