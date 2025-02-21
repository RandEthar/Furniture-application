import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:furniture_app/core/theming/colors.dart';
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
            child: RegisterScreenBody());
        },
      ),
    );
  }
}




void showCustomSnackbar(BuildContext context, String message, bool isSuccess) {
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: isSuccess ? "Success" : "Falier",
      message: message,
      contentType: isSuccess ? ContentType.success : ContentType.failure,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
