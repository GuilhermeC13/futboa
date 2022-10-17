import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:futboa/features/domain/repositories/standing_repository.dart';
import 'package:futboa/features/domain/usecases/get_league_standing_usecase.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/repositories_mocks/standing_repository_mock.dart';
import '../../../mocks/standings_entity_mock.dart';

void main() {
  late GetLeagueStandingUsecase usecase;
  late StandingRepository repository;

  setUp(() {
    repository = StandingRepositoryMock();
    usecase = GetLeagueStandingUsecase(repository);
  });

  test('should return a list of Standing when succeed', () async {
    // Arrange
    when(() => repository.getLeagueStanding(2013, 2022)).thenAnswer(
        (_) async => const Right<Failure, List<StandingEntity>>(tStandings));
    // act
    final result = await usecase(2013, 2022);
    // Assert
    expect(result, const Right(tStandings));
  });

  test('shoudl return a ServerFailure when dont succeed', () async {
    // Arrange
    when(() => repository.getLeagueStanding(2013, 2022)).thenAnswer(
        (_) async => Left<Failure, List<StandingEntity>>(ServerFailure()));
    // act
    final result = await usecase(2013, 2022);
    // Assert
    expect(result, Left(ServerFailure()));
  });
}
