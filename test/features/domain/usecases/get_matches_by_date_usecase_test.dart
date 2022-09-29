import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';
import 'package:futboa/features/domain/repositories/match_repostory.dart';
import 'package:futboa/features/domain/usecases/get_matches_by_date_usecase.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/match_entity_mock.dart';
import '../../../mocks/repositories_mocks/match_repository_mock.dart';

void main() {
  late GetMatchesByDateUsecase usecase;
  late MatchRepository repository;

  setUp(() {
    repository = MatchRepositoryMock();
    usecase = GetMatchesByDateUsecase(repository);
  });

  test('should return a list of MatchEntity when succeed', () async {
    // Arrange
    when(() => repository.getMatchesByDate("2022-09-28", "2022-09-28"))
        .thenAnswer((_) async =>
            const Right<Failure, List<MatchEntity>>(tListMatchEntity));
    // act
    final result = await usecase("2022-09-28", "2022-09-28");
    // Assert
    expect(result, const Right(tListMatchEntity));
  });

  test('should return a ServerFailure when dont succeed', () async {
    // Arrange
    when(() => repository.getMatchesByDate("2022-09-28", "2022-09-28"))
        .thenAnswer(
            (_) async => Left<Failure, List<MatchEntity>>(ServerFailure()));
    // act
    final result = await usecase("2022-09-28", "2022-09-28");
    // Assert
    expect(result, Left(ServerFailure()));
    verify(() => repository.getMatchesByDate("2022-09-28", "2022-09-28"))
        .called(1);
  });
}
