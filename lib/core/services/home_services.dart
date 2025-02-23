import 'package:furniture_app/core/services/firestore_services.dart';
import 'package:furniture_app/core/utils/api_endpoints.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';

abstract class HomeServices {
  Future<List<FurnitureModel>> getHomeData();
}

class HomeServicesImpl implements HomeServices {
  @override
  Future<List<FurnitureModel>> getHomeData() async {
    FirestoreService firestoreService = FirestoreService.instance;
    var data = firestoreService.getCollection(
        path: ApiEndpoints.getProducts(),
        builder: (data,documentId) {
          return FurnitureModel.fromJson(data);
        });
    return data;
  }
}
