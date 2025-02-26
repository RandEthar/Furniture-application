import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/cart/cart_cubit/cart_cubit.dart';
import 'package:furniture_app/features/cart/ui/widgets/list_cart_item.dart';
import 'package:iconsax/iconsax.dart';

class ListCart extends StatelessWidget {
  const ListCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      buildWhen: (previes,current)=>current is CartSuccess||
        current is CartLoading  ||
        current is CartFailure,
      builder: (context, state) {
        if (state is CartSuccess) {
          List<FurnitureModel> cartList = state.listProduct;
          return ListView.builder(
            shrinkWrap: true,
            physics:const  NeverScrollableScrollPhysics(),
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) {
                    context.read<CartCubit>().removeCart(cartList[index]);
                  },
                  direction: DismissDirection.endToStart,
                  key: Key(cartList[index].id.toString()),
                  background: Container(
                    alignment: Alignment.centerLeft,
                    height: 168.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(14.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            offset: const Offset(4, 4),
                            blurRadius: 12,
                            spreadRadius: 2,
                          ),
                        ]),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Iconsax.trash,
                            size: 30,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: 10.h, top: 6.h, left: 3, right: 3),
                    child: ListCartItem(
                      furnitureModel: cartList[index],
                    ),
                  ),
                );
              });
        } else if (state is CartLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: ColorsManeger.buttonGreenTeal,
          ));
        } else if (state is CartFailure) {
          return Center(child: Text(state.errorMassage));
        }
        return const Center(child: Text('Opps there was an error'));
      },
    );
  }
}
