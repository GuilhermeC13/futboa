import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/data/datasources/standing_datasource.dart';
import 'package:futboa/features/data/repositories/standing_repository_implementation.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/model_mocks/standing_model_mock.dart';

class MockStandingDatasource extends Mock implements StandingDatasource {}

void main() {
  late StandingRepositoryImplementation repositoryImplementation;
  late StandingDatasource datasource;

  setUp(() {
    datasource = MockStandingDatasource();
    repositoryImplementation = StandingRepositoryImplementation(datasource);
  });

  test('should return a List of StandingModel', () async {
    // Arrange
    when(() => datasource.getLeagueStanding(2013, 2022))
        .thenAnswer((_) async => tStandingListModelMock);
    // act
    final result = await repositoryImplementation.getLeagueStanding(2013, 2022);
    // Assert
    expect(result, const Right(tStandingListModelMock));
  });

  test('should return a ServerFailure when the call to datasource dont succeed',
      () async {
    // Arrange
    when(() => datasource.getLeagueStanding(2013, 2022))
        .thenThrow(ServerException());
    // act
    final result = await repositoryImplementation.getLeagueStanding(2013, 2022);
    // Assert
    expect(result, Left(ServerFailure()));
  });
}
