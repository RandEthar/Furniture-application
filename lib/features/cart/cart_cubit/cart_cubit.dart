import 'package:bloc/bloc.dart';
import 'package:furniture_app/core/services/home_services.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  HomeServicesImpl homeServices = HomeServicesImpl();
    Future<void> removeCart(FurnitureModel furnitureModel) async {
  
      await homeServices.removeProductsFromCart(furnitureModel);
       featchCartList() ;
  }





  Future<void> featchCartList() async {
    emit(CartLoading());
    try {
      List<FurnitureModel> productListCart = await homeServices.getCartList();
      emit(CartSuccess(listProduct: productListCart));
    } on Exception catch (e) {
      emit(CartFailure(errorMassage: e.toString()));
    }
  }
}
