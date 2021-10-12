import 'package:riverpod_learning/data/api_service/api_service.dart';

class MotorsApiService implements ApiService {
  @override
  List<String> getProducts() {
    return ['MotorsProduct 1', 'MotorsProduct 2'];
  }
}
