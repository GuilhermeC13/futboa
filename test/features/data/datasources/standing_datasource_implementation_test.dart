import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/endpoints/football_data_api_endpoints.dart';
import 'package:futboa/features/data/datasources/standing_datasource_implementation.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/http_client_mock/http_client_mock.dart';
import '../../../mocks/model_mocks/standing_model_mock.dart';
import '../../../mocks/standing_json_mock.dart';

void main() {
  late StandingDatasourceImplementation datasourceImplementation;
  late HttpClient client;

  setUp(() {
    client = HttpClientMock();
    datasourceImplementation = StandingDatasourceImplementation(client);
  });

  final urlExpected = FootballDataApiEndpoints.standing(2013, 2022);

  test('should call the get method with correct url', () async {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response(tStandingListJsonMock, 200));
    // act
    await datasourceImplementation.getLeagueStanding(2013, 2022);
    // Assert
    verify(() => client.get(urlExpected));
  });

  test('should return a list of MatchModel', () async {
    // Arrange
    when(() => client.get(urlExpected))
        .thenAnswer((_) async => Response(tStandingListJsonMock, 200));
    // act
    final result = await datasourceImplementation.getLeagueStanding(2013, 2022);
    // Assert
    expect(result, tStandingListModelMock);
  });

  test('should return a ServerException when not successful', () {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response('Something went wrong', 400));
    // act
    final result = datasourceImplementation.getLeagueStanding(2013, 2022);
    // Assert
    expect(() => result, throwsA(ServerException()));
  });
}
