import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/home_services.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial()) {}

  List<FurnitureModel> productListFav = [];
  List<FurnitureModel> productListCart = [];
  HomeServicesImpl homeServices = HomeServicesImpl();

  Future<void> toggleFavorit(FurnitureModel furnitureModel) async {
    log('toggleFavorit');
    emit(AddToFavoritsLoading());

    bool isFound = isFav(furnitureModel);
    // productList = await homeServices.getFavoritList();
    if (isFound) {
      await homeServices.removeProductsFromFavorit(furnitureModel);
      productListFav.removeWhere((element) => element.id == furnitureModel.id);
      log('remove');
    } else {
      await homeServices.addProductsToFavorit(furnitureModel);
      log('add');
      productListFav.add(furnitureModel);
    }

    emit(AddToFavoritsSuccess());
  }

  bool isFav(FurnitureModel furnitureModel) {
    bool isfavorit =
        productListFav.any((element) => element.id == furnitureModel.id);
    log(isfavorit.toString());
    return isfavorit;
  }

  Future<void> featchFavoritList() async {
    productListFav = await homeServices.getFavoritList();

    emit(AddToFavoritsSuccess());
  }
//////////////////////////////////////////////////////////////////////
  Future<void> toggleCart(FurnitureModel furnitureModel) async {
    emit(AddToCartLoading());

    bool isFound = inCart(furnitureModel);

    if (isFound) {
      await homeServices.removeProductsFromCart(furnitureModel);
      productListCart.removeWhere((element) => element.id == furnitureModel.id);
      log('remove');
    } else {
      await homeServices.addProductsToCart(furnitureModel);
      log('add');
      productListCart.add(furnitureModel);
    }

    emit(AddToCartSuccess());
  }
  bool inCart(FurnitureModel furnitureModel) {
    return productListCart.any((element) => element.id == furnitureModel.id);
  }
  Future<void> featchCartList() async {
  productListCart= await homeServices.getCartList();
     emit(AddToCartSuccess());
  }
}
