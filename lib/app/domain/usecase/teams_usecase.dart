import 'package:coding_challenge_bri/app/core/result.dart';
import 'package:coding_challenge_bri/app/core/usecase.dart';
import 'package:coding_challenge_bri/app/data/repositories/teams_repository_impl.dart';
import 'package:coding_challenge_bri/app/domain/entities/teams_entity.dart';
import 'package:coding_challenge_bri/app/domain/repositories/teams_repository.dart';

class TeamsUseCase extends UseCase<List<TeamsEntity>, NoParams> {
  @override
  Future<Result<List<TeamsEntity>>> call(NoParams params) async {
    TeamsRepository teams = TeamsRepositoryImpl();

    if (!await hasInternetConnection) {
      return Result.noInternet();
    }

    return teams.list();
  }
}
