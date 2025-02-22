import 'package:get_it/get_it.dart';
import 'package:firebase_auth/firebase_auth.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
}
