
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/list_view_item_product.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255.h,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context,index){
        return  Padding(
          padding:  EdgeInsets.only(right: 16.w,top: 6,bottom: 6),
          child: ListViewItemProduct(furnitureModel: productList[index],),
        );
      }),
    );
  }
}