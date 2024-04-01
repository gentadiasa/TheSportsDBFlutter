import 'package:coding_challenge_bri/app/domain/entities/teams_entity.dart';
import 'package:coding_challenge_bri/app/routes/app_arguments.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  late final TeamsEntity teams;
  RxBool isExpanded = false.obs; // Declare isExpanded as a RxBool

  @override
  void onInit() {
    _onInit();
    super.onInit();
  }

  void _onInit() {
    final args = Get.arguments as DetailArguments;
    teams = args.teams;
  }

  void toggleExpansion() {
    isExpanded.value = !isExpanded.value;
  }
}
