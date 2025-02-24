import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/wishlist/cubit/wishlist_cubit.dart';
import 'package:furniture_app/features/wishlist/ui/widgets/wishlist_product_item.dart';

class WishlistProductList extends StatelessWidget {
  const WishlistProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      builder: (context, state) {
        if (state is FeatchWishlistSuccess) {
          List<FurnitureModel> listProduct=state.productList;
  return Expanded(
    child: ListView.builder(
        itemCount:listProduct.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const  EdgeInsets.symmetric(horizontal: 3, vertical: 8),
            child:  WishlistProductItem(furnitureModel:listProduct[index] ,),
          );
        }),
  );
}else if(state is FeatchWishlistLoading){
   return const Center(child: CircularProgressIndicator(color: ColorsManeger.buttonGreenTeal,));
}else if(state is FeatchWishlistFailure){
   return Center(child: Text(state.errorMassage));
}
   return const Center(child: Text("Oops there was an error"));
      },
    );
  }
}
