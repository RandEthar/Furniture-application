import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

TextEditingController emailController=TextEditingController();
TextEditingController passwordController=TextEditingController();
GlobalKey formKey=GlobalKey<FormState>();








}
