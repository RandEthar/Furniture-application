import 'package:firebase_auth/firebase_auth.dart';


class ApiEndpoints {
static String  addUser({required String uid})=>'users/$uid';
static String  addProduct({required String id})=>'products/$id';
static String getProducts()=>'products';
static String  addProductsToFavorits({required String productId})=>'users/${userUid()}/favourite/${productId}';
static String userUid()=>FirebaseAuth.instance.currentUser!.uid;

 

static String   getFavorits()=>'users/${userUid()}/favourite';












}