import 'package:riverpod_learning/data/api_service/api_service.dart';

class GumtreeApiService implements ApiService {
  @override
  List<String> getProducts() {
    return ['GumtreeProduct 1', 'GumtreeProduct 2'];
  }
}
