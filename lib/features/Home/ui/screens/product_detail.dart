
import 'package:flutter/material.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/nav_bar_details_screen.dart';
import 'package:furniture_app/features/Home/ui/widgets/product_detail_body.dart';


class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.furnitureModel});
  final FurnitureModel furnitureModel;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      bottomNavigationBar: const NavBarDetailsScreen(),
      body:SafeArea(child: ProductDetailBody(furnitureModel: furnitureModel,)) ,




    );
  }
}

