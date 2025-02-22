
import 'package:flutter/material.dart';
import 'package:furniture_app/core/theming/colors.dart';
class Highlight extends StatelessWidget {
  const Highlight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height:200,
     foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
           ColorsManeger.buttonGreenTeal.withOpacity(1),
            ColorsManeger.buttonGreenTeal.withOpacity(.7), 
            ColorsManeger.buttonGreenTeal.withOpacity(0.0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: const [0.0,0.4, 0.9],
        ),
      ),
    );
  }
}