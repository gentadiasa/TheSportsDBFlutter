import 'package:coding_challenge_bri/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:coding_challenge_bri/app/core/result.dart';
import 'package:coding_challenge_bri/app/domain/entities/teams_entity.dart';
import 'package:coding_challenge_bri/app/domain/usecase/teams_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

class MockTeamsUseCase extends Mock implements TeamsUseCase {}

@GenerateNiceMocks([MockSpec<MockTeamsUseCase>()])
void main() {
  late HomeController homeController;
  late MockTeamsUseCase mockTeamsUseCase;

  setUp(() {
    mockTeamsUseCase = MockTeamsUseCase();
    homeController = HomeController();
  });

  group('_fetchTeams', () {
    test('when fetching teams successfully', () async {
      // Arrange
      final mockTeams = [
        TeamsEntity(
          name: 'Team A',
          shortName: 'TA',
          alternateName: '',
          stadiumName: '',
          jersey: '',
          logoUrl: '',
          sport: '',
          stadiumCapacity: '',
          stadiumLocation: '',
          stadiumThumb: '',
          videoUrl: '',
          website: '',
          description: '',
        ),
        TeamsEntity(
          name: 'Team B',
          shortName: 'TB',
          alternateName: '',
          stadiumName: '',
          jersey: '',
          logoUrl: '',
          sport: '',
          stadiumCapacity: '',
          stadiumLocation: '',
          stadiumThumb: '',
          videoUrl: '',
          website: '',
          description: '',
        ),
      ];
      final mockResult = Result.success(mockTeams);

      // Stubbing the call to mockTeamsUseCase.call
      when(mockTeamsUseCase.call(any)).thenAnswer((_) async => mockResult);

      // Act
      await homeController._fetchTeams();

      // Assert
      expect(homeController.listTeams, mockTeams);
      expect(homeController.dataListTeams, mockTeams);
      expect(homeController.isLoading.value, false);
    });

    test('when fetching teams fails', () async {
      // Arrange
      const errorMessage = 'Error fetching teams';
      final mockResult = Result.error(message: errorMessage);

      // Stubbing the call to mockTeamsUseCase.call
      when(mockTeamsUseCase.call(any)).thenAnswer((_) async => mockResult);

      // Act
      await homeController._fetchTeams();

      // Assert
      expect(homeController.listTeams, isEmpty);
      expect(homeController.dataListTeams, isEmpty);
      expect(homeController.isLoading.value, false);
    });
  });
}
