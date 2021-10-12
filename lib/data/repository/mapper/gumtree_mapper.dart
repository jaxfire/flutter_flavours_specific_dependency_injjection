import 'package:riverpod_learning/data/repository/mapper/my_repo_mapper.dart';

class GumtreeMapper implements MyRepoMapper {
  @override
  List<String> map(List<String> input) {
    // Mapping logic goes here
    input.add(' - Mapped by the GumtreeMapper');
    return input;
  }
}
