import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/endpoints/football_data_api_endpoints.dart';
import 'package:futboa/features/data/datasources/league_datasource.dart';
import 'package:futboa/features/data/datasources/league_datasource_implementation.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/http_client_mock/http_client_mock.dart';
import '../../../mocks/league_json_mock.dart';
import '../../../mocks/model_mocks/league_model_mock.dart';

void main() {
  late LeagueDatasource datasource;
  late HttpClient client;

  setUp(() {
    client = HttpClientMock();
    datasource = LeagueDatasourceImplementation(client);
  });

  final urlExpected = FootballDataApiEndpoints.league("BSA");

  test('should call the get method with correct url', () async {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response(leagueJsonMock, 200));
    // act
    await datasource.getLeagueFromLeagueCode("BSA");
    // Assert
    verify(() => client.get(urlExpected));
  });

  test('should return a LeagueModel when is successful', () async {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response(leagueJsonMock, 200));
    // act
    final result = await datasource.getLeagueFromLeagueCode("BSA");
    // Assert
    expect(result, tLeagueModel);
  });

  test('should return a list of LeagueModel when is successful', () async {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response(listLeaguesJsonMock, 200));
    // act
    final result = await datasource.getAllLeagues();
    // Assert
    expect(result, tListLeagueModel);
  });

  test('should return a ServerException when not successful', () {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response('Something went wrong', 400));
    // act
    final result = datasource.getLeagueFromLeagueCode("BSA");
    // Assert
    expect(() => result, throwsA(ServerException()));
  });
}
