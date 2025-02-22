import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/firestore_services.dart';
import 'package:furniture_app/core/utils/api_endpoints.dart';
import 'package:furniture_app/features/Home/data/furniture_model.dart';
import 'package:furniture_app/features/Home/ui/widgets/home_screen_body.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    uploadeProducts();
  }
  void uploadeProducts() async{
    log('rand');
    FirestoreService firestoreService = FirestoreService.instance;
    for (var i = 0; i < productList.length; i++) {
     await firestoreService.setData(
          path: ApiEndpoints.addProduct(id: productList[i].id),
          data: productList[i].toJson());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: HomeScreenBody(),
    );
  }
}
