import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture_app/core/services/home_services.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:meta/meta.dart';

part 'wishlist_state.dart';

class WishlistCubit extends Cubit<WishlistState> {
  WishlistCubit() : super(WishlistInitial());
  HomeServicesImpl homeServicesImpl = HomeServicesImpl();

  List<FurnitureModel> productList = [];
  Future<void> removefavorite({required FurnitureModel furnitureModel}) async {
    homeServicesImpl.removeProductsFromFavorit(furnitureModel);
    await featchWishListProducts();
  }

  Future<void> featchWishListProducts() async {
    emit(FeatchWishlistLoading());
    try {
      List<FurnitureModel> data = await homeServicesImpl.getFavoritList();
      productList = data;
      emit(FeatchWishlistSuccess(productList: data));
    } catch (e) {
      emit(FeatchWishlistFailure(errorMassage: e.toString()));
    }
  }
}
