import 'package:coding_challenge_bri/app/domain/entities/teams_entity.dart';

class TeamsModel extends TeamsEntity {
  TeamsModel.fromJson(Map<String, dynamic> json)
      : super(
          name: json['strTeam'] ?? '',
          shortName: json['strTeamShort'] ?? '',
          alternateName: json['strAlternate'] ?? '',
          stadiumName: json['strStadium'] ?? '',
          stadiumLocation: json['strStadiumLocation'] ?? '',
          stadiumCapacity: json['intStadiumCapacity'] ?? '',
          stadiumThumb: json['strStadiumThumb'] ?? '',
          website: json['strWebsite'] ?? '',
          jersey: json['strTeamJersey'] ?? '',
          sport: json['strSport'] ?? '',
          logoUrl: json['strTeamBadge'] ?? '',
          videoUrl: json['strYoutube'] ?? '',
          description: json['strDescriptionEN'] ?? '',
        );
}
