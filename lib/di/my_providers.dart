import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/data/api_service/gumtree_api_service.dart';
import 'package:riverpod_learning/data/api_service/motors_api_service.dart';
import 'package:riverpod_learning/data/flavours/flavours.dart';
import 'package:riverpod_learning/data/my_cubit.dart';
import 'package:riverpod_learning/data/my_use_case.dart';
import 'package:riverpod_learning/data/repository/mapper/gumtree_mapper.dart';
import 'package:riverpod_learning/data/repository/mapper/motors_mapper.dart';
import 'package:riverpod_learning/data/repository/my_repository.dart';

final apiServiceProvider = Provider((ref) {
  if (selectedFlavour == Flavour.gumtree) {
    return GumtreeApiService();
  } else {
    return MotorsApiService();
  }
});

final repoMapperProvider = Provider((ref) {
  if (selectedFlavour == Flavour.gumtree) {
    return GumtreeMapper();
  } else {
    return MotorsMapper();
  }
});

final repositoryProvider = Provider((ref) {
  final theApiService = ref.read(apiServiceProvider);
  final theRepoMapper = ref.read(repoMapperProvider);
  return MyRepository(theApiService, theRepoMapper);
});

final useCaseProvider = Provider((ref) {
  final theRepository = ref.read(repositoryProvider);
  return MyUseCase(theRepository);
});

final cubitProvider = Provider((ref) {
  final theUseCase = ref.read(useCaseProvider);
  return MyCubit(theUseCase);
});
