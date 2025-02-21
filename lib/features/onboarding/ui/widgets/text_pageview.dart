


import 'package:flutter/material.dart';


class TextPageView extends StatelessWidget {
  const TextPageView({
    super.key, required this.text, required this.textStyle,
  });
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
          child: Text(
        textAlign: TextAlign.center,
        text,
        style: textStyle,
      )),
      
    );
  }
}