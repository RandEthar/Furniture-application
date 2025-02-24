import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_app/core/theming/colors.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/logic/details_cubit/cubit/details_cubit.dart';

import 'package:iconsax/iconsax.dart';

class FavoriteContenar extends StatelessWidget {
  final FurnitureModel furnitureModel;
  const FavoriteContenar({super.key, required this.furnitureModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        bool isFavorite = context.read<DetailsCubit>().isFav(furnitureModel);
        
        return Container(
          height: 44.h,
          width: 44.h,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: ColorsManeger.buttonGreenTeal),
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
          ),
          child: IconButton(
            icon: Icon(
              isFavorite ? Iconsax.heart5 : Iconsax.heart,
              color: ColorsManeger.buttonGreenTeal,
            ),
            onPressed: () async {
              await context.read<DetailsCubit>().toggleFavorit(furnitureModel);
            },
          ),
        );
      },
    );
  }
}
