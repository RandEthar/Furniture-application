


import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

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