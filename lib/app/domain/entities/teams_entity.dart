class TeamsEntity {
  final String name;
  final String shortName;
  final String alternateName;
  final String stadiumName;
  final String stadiumLocation;
  final String stadiumCapacity;
  final String stadiumThumb;
  final String website;
  final String jersey;
  final String sport;
  final String logoUrl;
  final String videoUrl;
  final String? description;

  TeamsEntity({
    required this.name,
    required this.shortName,
    required this.alternateName,
    required this.stadiumName,
    required this.stadiumLocation,
    required this.stadiumCapacity,
    required this.stadiumThumb,
    required this.website,
    required this.jersey,
    required this.sport,
    required this.logoUrl,
    required this.videoUrl,
    this.description,
  });
}
