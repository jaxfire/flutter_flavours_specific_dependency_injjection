import 'package:riverpod_learning/data/my_use_case.dart';

class MyCubit {
  final MyUseCase _myUseCase;

  MyCubit(this._myUseCase);

  String doCubitStuff() => _myUseCase.doUseCaseStuff();
}
