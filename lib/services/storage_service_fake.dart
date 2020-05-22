
import 'package:flutter_try/services/storage_service.dart';

class StorageServiceFake extends StorageService {

  @override
  Future<int> getCounterValue() async {
    return 14;
  }

  @override
  Future<void> saveCounterValue(int value) async {
    
  }

}