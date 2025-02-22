import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/core/widgets/button_app.dart';
import 'package:furniture_app/features/Login/logic/cubit/login_cubit.dart';
import 'package:furniture_app/features/Login/ui/widgets/custom_form.dart';
import 'package:furniture_app/features/Login/ui/widgets/dont_have_an_account.dart';
import 'package:furniture_app/features/Login/ui/widgets/or_login.dart';

import 'package:furniture_app/features/Login/ui/widgets/text_login_screen.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextLoginScreen(),
            const CustomForm(),
            verticalSpace(8),
            Text(
              "Forgot your password?",
              style: TextStyles.manrope18RegulardarkGray.copyWith(
                  color: ColorsManeger.buttonGreenTeal, fontSize: 16.sp),
            ),
            verticalSpace(24),
            ButtonApp(
              onPressed: () {
                if (context
                    .read<LoginCubit>()
                    .formKey
                    .currentState!
                    .validate()) {
                  context.read<LoginCubit>().logIn();
                } else {
                  context.read<LoginCubit>().autovalidateMode =
                      AutovalidateMode.always;
                }
              },
              text: "Log In",
              height: 43,
              width: double.infinity,
              backgroundColor: ColorsManeger.buttonGreenTeal,
              textColor: Colors.white,
            ),
            verticalSpace(32),
            const OrLogIn(),
            verticalSpace(32),
            const DontHaveAnAccount()
          ],
        ),
      ),
    );
  }
}
