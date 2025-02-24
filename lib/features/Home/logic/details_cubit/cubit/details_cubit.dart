import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/home_services.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial()) {
   
  }

  List<FurnitureModel> productList = [];
  HomeServicesImpl homeServices = HomeServicesImpl();

  Future<void> toggleFavorit(FurnitureModel furnitureModel) async {
    log('toggleFavorit');
    emit(AddToFavoritsLoading());

    bool isFound = isFav(furnitureModel);
      // productList = await homeServices.getFavoritList();
    if (isFound) {
      await homeServices.removeProductsFromFavorit(furnitureModel);
      productList.removeWhere((element) => element.id == furnitureModel.id);
      log('remove');
    } else {
      await homeServices.addProductsToFavorit(furnitureModel);
            log('add');
      productList.add(furnitureModel);
    }

    emit(AddToFavoritsSuccess()); // تحديث الحالة بعد التغيير
  }

  bool isFav(FurnitureModel furnitureModel) {
    
   bool isfavorit=productList.any((element) => element.id == furnitureModel.id);
   log(isfavorit.toString());
    return isfavorit;
  }

  Future<void> featchFavoritList() async {
    productList = await homeServices.getFavoritList();
      // log("Fetched Favorite List: ${productList.map((e) => e.id).toList()}"); // طباعة الـ IDs فقط لسهولة القراءة
  emit(AddToFavoritsSuccess());//ليش هاي لازم لازم احطها رغم اني مش فاحصه state 
    // log("Fetched List: ${productList.toString()}");
  //  emit(AddToFavoritsSuccess()); // تحديث الواجهة بعد الجلب
  }
}

