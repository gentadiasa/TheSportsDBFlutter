import 'package:coding_challenge_bri/app/core/helper.dart';
import 'package:coding_challenge_bri/app/core/result.dart';
import 'package:coding_challenge_bri/app/core/usecase.dart';
import 'package:coding_challenge_bri/app/domain/entities/teams_entity.dart';
import 'package:coding_challenge_bri/app/domain/usecase/teams_usecase.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isLoadingMore = false.obs;
  int _pageNumber = 0;

  final int _pageSize = 5;
  final List<TeamsEntity> dataListTeams = [];
  final listTeams = RxList<TeamsEntity>();

  @override
  void onInit() {
    _fetchTeams();
    super.onInit();
  }

  Future<void> _fetchTeams() async {
    isLoading.value = true;
    late TeamsUseCase teamsUseCase;
    late Result<List<TeamsEntity>> result;

    teamsUseCase = TeamsUseCase();

    result = await teamsUseCase.call(NoParams());

    if (result.status is Success) {
      listTeams.value = result.data;

      final int startIndex = _pageNumber * _pageSize;
      final int endIndex = startIndex + _pageSize;
      final int totalTeams = listTeams.length;

      if (startIndex < totalTeams) {
        dataListTeams.addAll(listTeams.sublist(
          startIndex,
          endIndex < totalTeams ? endIndex : totalTeams,
        ));
      }

      isLoading.value = false;
    } else {
      showSnack(result.message);
      isLoading.value = false;
    }
  }

  Future<void> loadMore() async {
    isLoadingMore.value = true;
    _pageNumber++;
    await _fetchTeams();
    isLoadingMore.value = false;
  }
}
