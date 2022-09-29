import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/data/datasources/match_datasource.dart';
import 'package:futboa/features/data/repositories/match_repository_implementation.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/match_model_mock.dart';

class MockLeagueDatasource extends Mock implements MatchDatasource {}

void main() {
  late MatchRepositoryImplementation repositoryImplementation;
  late MatchDatasource datasource;

  setUp(() {
    datasource = MockLeagueDatasource();
    repositoryImplementation = MatchRepositoryImplementation(datasource);
  });

  test('should return a MatchModel when succeed', () async {
    // Arrange
    when(() => datasource.getMatchesByDate("2022-09-28", "2022-09-28"))
        .thenAnswer((_) async => tListMatchModelMock);
    // act
    final result = await repositoryImplementation.getMatchesByDate(
        "2022-09-28", "2022-09-28");
    // Assert
    expect(result, const Right(tListMatchModelMock));
  });

  test('should return a ServerFailure when the call to datasource dont succeed',
      () async {
    // Arrange
    when(() => datasource.getMatchesByDate("2022-09-28", "2022-09-28"))
        .thenThrow(ServerException());
    // act
    final result = await repositoryImplementation.getMatchesByDate(
        "2022-09-28", "2022-09-28");
    // Assert
    expect(result, Left(ServerFailure()));
  });
}
