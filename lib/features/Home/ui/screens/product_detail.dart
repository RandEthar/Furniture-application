

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/logic/details_cubit/cubit/details_cubit.dart';
import 'package:furniture_app/features/Home/ui/widgets/nav_bar_details_screen.dart';
import 'package:furniture_app/features/Home/ui/widgets/product_detail_body.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.furnitureModel});
  final FurnitureModel furnitureModel;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<DetailsCubit>().featchFavoritList();
        context.read<DetailsCubit>().featchCartList();
    log('featchFavoritList');
    print(  context.read<DetailsCubit>().productListFav);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:SvgPicture.asset("asset/svg/left-icon.svg",height: 24.h,width: 24.w,)
         , onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: NavBarDetailsScreen(furnitureModel: widget.furnitureModel,),
      body: SafeArea(
          child: ProductDetailBody(
        furnitureModel: widget.furnitureModel,
      )),
    );
  }
}


