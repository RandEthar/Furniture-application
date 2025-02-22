
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/utils/snackbar_util.dart';
import 'package:furniture_app/features/register/logic/cubit/register_cubit.dart';
import 'package:furniture_app/features/register/ui/widgets/register_screen_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if(state is RegisterFalier){
    showCustomSnackbar(context, state.textMassage, false);
          }else if(state is RegisterSuccess){
    
  showCustomSnackbar(context, "Effective has been created!", true);
  Future.delayed(const Duration(seconds: 1), () {
    // Navigator.pushReplacementNamed(context, "/home");
  });
          }
        },
        builder: (context, state) {
          return  ModalProgressHUD(
            color: ColorsManeger.buttonGreenTeal,
             inAsyncCall: state is RegisterLoading,
            child:const  RegisterScreenBody());
        },
      ),
    );
  }
}





