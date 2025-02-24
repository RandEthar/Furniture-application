import 'package:furniture_app/core/services/firestore_services.dart';
import 'package:furniture_app/core/utils/api_endpoints.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';

abstract class HomeServices {
  Future<List<FurnitureModel>> getHomeData();
  Future<void> addProductsToFavorit(FurnitureModel furnitureModel);
  Future<void> removeProductsFromFavorit(FurnitureModel furnitureModel);
    Future<List<FurnitureModel>> getFavoritList();
}

class HomeServicesImpl implements HomeServices {
  FirestoreService firestoreService = FirestoreService.instance;
  @override
  Future<List<FurnitureModel>> getHomeData() async {
    var data = firestoreService.getCollection(
        path: ApiEndpoints.getProducts(),
        builder: (data, documentId) {
          return FurnitureModel.fromJson(data);
        });
    return data;
  }
  @override
  Future<void> addProductsToFavorit(FurnitureModel furnitureModel) async {
    await firestoreService.setData(
        path: ApiEndpoints.addProductsToFavorits(productId: furnitureModel.id),
        data: furnitureModel.toJson());
  }
  @override
  Future<void> removeProductsFromFavorit(FurnitureModel furnitureModel) async {
    await firestoreService.deleteData(
      path: ApiEndpoints.addProductsToFavorits(productId: furnitureModel.id),
    );
  }
  
  @override
  Future<List<FurnitureModel>> getFavoritList() async{
       var data=await firestoreService.getCollection(
        path: ApiEndpoints.getFavorits(),
        builder: (data,index){
             return  FurnitureModel.fromJson(data);
        });
        return data;
  }
}
