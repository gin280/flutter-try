
import 'package:flutter_try/services/storage_service.dart';
import 'package:flutter_try/services/storage_service_fake.dart';
import 'package:flutter_try/services/storage_service_shared_pref.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setupServiceLocator() {
  locator.registerLazySingleton<StorageService>(() => StorageServiceSharedPreferences());
}