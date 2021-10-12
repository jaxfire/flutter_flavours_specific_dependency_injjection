import 'package:riverpod_learning/data/repository/my_repository.dart';

class MyUseCase {
  final MyRepository _myRepository;

  MyUseCase(this._myRepository);

  String doUseCaseStuff() {
    print('========');
    print('The UseCase received the following:');
    _myRepository.doRepoStuff().forEach((element) {
      print(element);
    });
    print('========');
    return 'TheData';
  }
}
