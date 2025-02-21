import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/helper/spacing.dart';

import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/widgets/button_app.dart';
import 'package:furniture_app/features/register/logic/cubit/register_cubit.dart';
import 'package:furniture_app/features/register/ui/widgets/custom_form_register.dart';
import 'package:furniture_app/features/register/ui/widgets/terms_of_us.dart';
import 'package:furniture_app/features/register/ui/widgets/text_register_screen.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SafeArea(
        child: Column(
          children: [
            const TextRegisterScreen(),
            const CustomFormRegister(),
            const TermsOfUs(),
            verticalSpace(24),
            ButtonApp(
              onPressed: () {
                if (context
                    .read<RegisterCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                //  context.read<RegisterCubit>().formKey.currentState!.save();
                   context.read<RegisterCubit>().register();
                   log('Create Account!');
                }else{
                     context.read<RegisterCubit>().autovalidateMode=AutovalidateMode.onUserInteraction;
                }
              },
              text: "Create Account",
              height: 47,
              width: double.infinity,
              backgroundColor: ColorsManeger.buttonGreenTeal,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
