import 'package:flutter_try/app/locator.iconfig.dart';
import 'package:flutter_try/services/storage_service.dart';
import 'package:flutter_try/services/storage_service_shared_pref.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() {
  $initGetIt(locator);
  locator.registerLazySingleton<StorageService>(() => StorageServiceSharedPreferences());
} 