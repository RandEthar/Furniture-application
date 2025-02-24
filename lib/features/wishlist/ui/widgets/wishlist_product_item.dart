import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/helper/box_decorations.dart';
import 'package:furniture_app/core/helper/spacing.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/core/theming/styles.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/container_discount.dart';
import 'package:furniture_app/features/wishlist/cubit/wishlist_cubit.dart';
import 'package:iconsax/iconsax.dart';

class WishlistProductItem extends StatelessWidget {
  const WishlistProductItem({super.key, required this.furnitureModel});
    final FurnitureModel furnitureModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,width: double.infinity,
      decoration: boxDecorations(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          
          children: [
             Image.network(furnitureModel.imageUrl,height: 94.h,width: 94.w,),
            horizontalSpacing(20),
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(furnitureModel.name,style: TextStyles.manrope12RegulardimGray.copyWith(
              fontSize: 16.sp
            ),),
              Text('\$${furnitureModel.price}',style: TextStyles.manrope16BoldWhite.copyWith(
              fontSize:20.sp,color: ColorsManeger.dimGray
            ),),
                verticalSpace(4),
            Row(children: [
              Text( '\$${furnitureModel.oldPrice}',
            style: TextStyles.manrope14RegularextradarkGray
                .copyWith(color: ColorsManeger.dimGray,decoration:TextDecoration.lineThrough,
               decorationColor: ColorsManeger.dimGray )),
                 horizontalSpacing(8),
                  ContainerDiscount(discount:furnitureModel.discount,height: 20.h,width:60.w ,)
            ],)
        
        
            ],),const Spacer(),
         Align(
          alignment: Alignment.bottomCenter,
          child: IconButton(highlightColor:Colors.red.withOpacity(0.2) ,
            onPressed: (){
              context.read<WishlistCubit>().removefavorite(furnitureModel: furnitureModel);


            }, icon:const Icon( Iconsax.trash,color: Colors.red,)))
        
        
        ],),
      ),
    );
  }
}