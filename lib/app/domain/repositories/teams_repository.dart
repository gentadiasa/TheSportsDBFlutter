import 'package:coding_challenge_bri/app/core/result.dart';
import 'package:coding_challenge_bri/app/domain/entities/teams_entity.dart';

abstract class TeamsRepository {
  Future<Result<List<TeamsEntity>>> list();
}
