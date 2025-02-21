import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/widgets/text_form_field_app.dart';
import 'package:furniture_app/features/Login/logic/cubit/login_cubit.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
        child: Column(
      children: [
        CustomTextField(
          controller: context.read<LoginCubit>().emailController,
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 16.w, left: 20.w),
            child: SvgPicture.asset(
              "assets/svg/email.svg",
              height: 16.h,
              width: 20.w,
              colorFilter: const ColorFilter.mode(
                ColorsManeger.extradarkGray,
                BlendMode.srcIn,
              ),
            ),
          ),
          text: "Email",
          contentPadding:
              EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
        ),
        verticalSpace(16),
        CustomTextField(
            controller: context.read<LoginCubit>().passwordController,
          obscureText: obscureText,
          suffixIcon: Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                child: Icon(
                  obscureText == false
                      ? Icons.visibility
                      : Icons.visibility_off,
                  size: 22,
                  color: ColorsManeger.passGray,
                ),
              )),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 16.w, left: 20.w),
            child: SvgPicture.asset(
              "assets/svg/password.svg",
              height: 16.h,
              width: 20.w,
              colorFilter: const ColorFilter.mode(
                ColorsManeger.extradarkGray,
                BlendMode.srcIn,
              ),
            ),
          ),
          text: "Password",
          contentPadding:
              EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
        )
      ],
    ));
  }
}
