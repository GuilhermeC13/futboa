import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/repositories/league_repository.dart';
import 'package:futboa/features/domain/usecases/get_league_from_league_code_usecase.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/league_entity_mock.dart';
import '../../../mocks/repositories_mocks/league_repository_mock.dart';

void main() {
  late GetLeagueFromLeagueCodeUsecase usecase;
  late LeagueRepository repository;

  setUp(() {
    repository = LeagueRepositoryMock();
    usecase = GetLeagueFromLeagueCodeUsecase(repository);
  });

  test('should get league entity from a given league id and season', () async {
    // Arrange
    when(() => repository.getLeagueFromLeagueCode("BSA")).thenAnswer(
        (_) async => const Right<Failure, LeagueEntity>(tLeagueEntity));
    // act
    final result = await usecase("BSA");
    // Assert
    expect(result, const Right(tLeagueEntity));
    verify(() => repository.getLeagueFromLeagueCode("BSA")).called(1);
  });

  test('should return a ServerFailure when dont succeed', () async {
    // Arrange
    when(() => repository.getLeagueFromLeagueCode("BSA"))
        .thenAnswer((_) async => Left<Failure, LeagueEntity>(ServerFailure()));
    // act
    final result = await usecase("BSA");
    // Assert
    expect(result, Left(ServerFailure()));
    verify(() => repository.getLeagueFromLeagueCode("BSA")).called(1);
  });
}
