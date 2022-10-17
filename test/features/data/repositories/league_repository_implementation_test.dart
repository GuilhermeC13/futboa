import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/core/usecase/errors/failures.dart';
import 'package:futboa/features/data/datasources/league_datasource.dart';
import 'package:futboa/features/data/repositories/league_repository_implementation.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/model_mocks/league_model_mock.dart';

class MockLeagueDatasource extends Mock implements LeagueDatasource {}

void main() {
  late LeagueRepositoryImplementation repositoryImplementation;
  late LeagueDatasource datasource;

  setUp(() {
    datasource = MockLeagueDatasource();
    repositoryImplementation = LeagueRepositoryImplementation(datasource);
  });

  test('should return league model when calls the datasource', () async {
    // Arrange
    when(() => datasource.getLeagueFromLeagueCode("BSA"))
        .thenAnswer((_) async => tLeagueModel);
    // act
    final result =
        await repositoryImplementation.getLeagueFromLeagueCode("BSA");
    // Assert
    expect(result, const Right(tLeagueModel));
  });

  test(
      'should return a list of League Model when calls the GetAllLeagues datasource',
      () async {
    // Arrange
    when(() => datasource.getAllLeagues())
        .thenAnswer((_) async => tListLeagueModel);
    // act
    final result = await repositoryImplementation.getAllLeagues();
    // Assert
    expect(result, const Right(tListLeagueModel));
  });

  test('should return a ServerFailure when the call to datasource dont succeed',
      () async {
    // Arrange
    when(() => datasource.getLeagueFromLeagueCode("BSA"))
        .thenThrow(ServerException());
    // act
    final result =
        await repositoryImplementation.getLeagueFromLeagueCode("BSA");
    // Assert
    expect(result, Left(ServerFailure()));
  });
}
