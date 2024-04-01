import 'package:coding_challenge_bri/app/core/dio.dart';
import 'package:coding_challenge_bri/app/core/result.dart';
import 'package:coding_challenge_bri/app/data/models/teams_model.dart';
import 'package:coding_challenge_bri/app/domain/entities/teams_entity.dart';
import 'package:coding_challenge_bri/app/domain/repositories/teams_repository.dart';
import 'package:dio/dio.dart';
import 'package:coding_challenge_bri/app/config/app_config.dart';

class TeamsRepositoryImpl extends TeamsRepository {
  final _dio = DioHelper.init();

  @override
  Future<Result<List<TeamsEntity>>> list() async {
    final flavor = AppConfig.baseLeague;
    final endpoint =
      '/json/3/search_all_teams.php?l=${Uri.encodeComponent(flavor)}';

    try {
      var response = await _dio.get(endpoint);
      return Result.success((response.data["teams"] as List)
          .map((e) => TeamsModel.fromJson(e))
          .toList());
    } on DioException catch (e) {
      return DioHelper.handleErr(e);
    } catch (e) {
      return DioHelper.handleFatalErr(e);
    }
  }
}
