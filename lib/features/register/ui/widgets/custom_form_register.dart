import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/utils/validators.dart';
import 'package:furniture_app/core/widgets/text_form_field_app.dart';

import 'package:furniture_app/features/register/logic/cubit/register_cubit.dart';

class CustomFormRegister extends StatefulWidget {
  const CustomFormRegister({super.key});

  @override
  State<CustomFormRegister> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomFormRegister> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: context.read<RegisterCubit>().autovalidateMode,
        key: context.read<RegisterCubit>().formKey,
        child: Column(
          children: [
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Your Name';
                }
                if (!isValidName(value)) {
                  return 'Enter a Valid Name';
                }
                return null;
              },
              controller: context.read<RegisterCubit>().firstNameController,
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 16.w, left: 20.w),
                child: SvgPicture.asset(
                  "assets/svg/person.svg",
                  height: 18.h,
                  width: 16.w,
                  colorFilter: const ColorFilter.mode(
                    ColorsManeger.extradarkGray,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              text: "First Name",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
            ),
            verticalSpace(16),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Your Name';
                }
                if (!isValidName(value)) {
                  return 'Enter a Valid Name';
                }
                return null;
              },
              controller: context.read<RegisterCubit>().lastNameController,
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 16.w, left: 20.w),
                child: SvgPicture.asset(
                  "assets/svg/person.svg",
                  height: 18.h,
                  width: 16.w,
                  colorFilter: const ColorFilter.mode(
                    ColorsManeger.extradarkGray,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              text: "Last Name",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
            ),
            verticalSpace(16),
            CustomTextField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Email';
                } else if (!isValidEmail(email: value)) {
                  return 'Please Enter a valid email';
                }

                return null;
              },
              controller: context.read<RegisterCubit>().emailController,
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                } else if (!isValidPassword(value)) {
                  return 'Password must be at least 8 characters long, include an uppercase letter, a lowercase letter, and a number or special character.';
                }
                return null;
              },
              controller: context.read<RegisterCubit>().passwordController,
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
                  height: 18.h,
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
            ),
            verticalSpace(24)
          ],
        ));
  }
}
