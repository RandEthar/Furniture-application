import 'package:flutter/material.dart';
import 'package:furniture_app/features/cart/ui/widgets/cart_screen_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
       return Scaffold(body: CartScreenBody(),);
  }
}