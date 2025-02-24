import 'package:flutter/material.dart';
import 'package:furniture_app/features/wishlist/ui/widgets/wishlist_body.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: SafeArea(child: WishlistBody()),







    );
  }
}