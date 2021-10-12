import 'package:riverpod_learning/data/api_service/api_service.dart';
import 'package:riverpod_learning/data/repository/mapper/my_repo_mapper.dart';

class MyRepository {
  final ApiService _myApiService;
  final MyRepoMapper _mapper;

  MyRepository(this._myApiService, this._mapper);

  List<String> doRepoStuff() {
    return _mapper.map(_myApiService.getProducts());
  }
}
