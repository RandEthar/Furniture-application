import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:furniture_app/core/routing/routes.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/utils/snackbar_util.dart';
import 'package:furniture_app/features/Login/logic/cubit/login_cubit.dart';
import 'package:furniture_app/features/Login/ui/widgets/login_screen_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginFailer) {
             showCustomSnackbar(context, state.errorMessage, false);
          }else if(state is LoginSuccess){
 showCustomSnackbar(context, "You have successfully logged in!", true);

   Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context,Routes.navbarApp);
   });
          }
        },
        builder: (context, state) {
          return  ModalProgressHUD(
            color: ColorsManeger.buttonGreenTeal,
            inAsyncCall: state is LoginLoading,
            child: const LoginScreenBody()); 
        },
      ),
    );
  }
}







