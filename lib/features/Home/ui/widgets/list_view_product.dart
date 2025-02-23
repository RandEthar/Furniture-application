import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/logic/cubit/home_cubit.dart';
import 'package:furniture_app/features/Home/ui/widgets/list_view_item_product.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit,HomeState>(
      builder: (context, state) {
        if(state is HomeDataFailure){
          return Center(child: Text(state.errorMassage));
        }else if(state is HomeDataLoading){
          return Skeletonizer(
            
 // enabled: _loading,
  child: SizedBox(
     height: 255.h,
    child: ListView.builder(
            scrollDirection: Axis.horizontal,
      itemCount: 7,
      itemBuilder: (context, index) {
        return  ListViewItemProduct(
                furnitureModel:productList[0],
              );
      },
    ),
  ),
);
            
        }
        else if(state is HomeDataSuccess){
         List<FurnitureModel> products=state.listProduct;
  return SizedBox(
    height: 255.h,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 16.w, top: 6, bottom: 6),
            child: ListViewItemProduct(
              furnitureModel: products[index],
            ),
          );
        }),
  );
}return Center(child: Text("No Data"));
      },
    );
  }
}
