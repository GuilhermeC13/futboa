import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/repositories/league_repository.dart';
import 'package:futboa/features/domain/usecases/get_all_leagues_usecase.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/league_entity_mock.dart';
import '../../../mocks/repositories_mocks/league_repository_mock.dart';

void main() {
  late GetAllLeaguesUsecase usecase;
  late LeagueRepository repository;

  setUp(() {
    repository = LeagueRepositoryMock();
    usecase = GetAllLeaguesUsecase(repository);
  });

  test('should get a list of league entity', () async {
    // Arrange
    when(() => repository.getAllLeagues()).thenAnswer((_) async =>
        const Right<Failure, List<LeagueEntity>>(tListLeagueEntity));
    // act
    final result = await usecase();
    // Assert
    expect(result, const Right(tListLeagueEntity));
  });

  test('should return a ServerFailure when dont succeed', () async {
    // Arrange
    when(() => repository.getAllLeagues()).thenAnswer(
        (_) async => Left<Failure, List<LeagueEntity>>(ServerFailure()));
    // act
    final result = await usecase();
    // Assert
    expect(result, Left(ServerFailure()));
    verify(() => repository.getAllLeagues()).called(1);
  });
}
