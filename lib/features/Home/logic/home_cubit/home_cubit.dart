

import 'package:bloc/bloc.dart';
import 'package:furniture_app/core/services/home_services.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  HomeServicesImpl homeServicesImpl = HomeServicesImpl();

  Future<void> featchHomeData() async {
    emit(HomeDataLoading());

    try {

 List<FurnitureModel> data= await homeServicesImpl.getHomeData();
  emit(HomeDataSuccess(listProduct: data));
} on Exception catch (e) {
  emit(HomeDataFailure(errorMassage: e.toString()));
}
  }
}
