import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/endpoints/football_data_api_endpoints.dart';
import 'package:futboa/features/data/datasources/match_datasource_implementation.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

import '../../../mocks/http_client_mock/http_client_mock.dart';
import '../../../mocks/match_json_mock.dart';
import '../../../mocks/match_model_mock.dart';

void main() {
  late MatchDatasourceImplementation datasourceImplementation;
  late HttpClient client;

  setUp(() {
    client = HttpClientMock();
    datasourceImplementation = MatchDatasourceImplementation(client);
  });

  final urlExpected =
      FootballDataApiEndpoints.matches("2022-09-28", "2022-09-29");

  test('should call the get method with correct url', () async {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response(tListMatchJsonMock, 200));
    // act
    await datasourceImplementation.getMatchesByDate("2022-09-28", "2022-09-29");
    // Assert
    verify(() => client.get(urlExpected));
  });

  test('should return a list of MatchModel', () async {
    // Arrange
    when(() => client.get(urlExpected))
        .thenAnswer((_) async => Response(tListMatchJsonMock, 200));
    // act
    final result = await datasourceImplementation.getMatchesByDate(
      "2022-09-28",
      "2022-09-29",
    );
    // Assert
    expect(result, tListMatchModelMock);
  });

  test('should return a ServerException when not successful', () {
    // Arrange
    when(() => client.get(any()))
        .thenAnswer((_) async => Response('Something went wrong', 400));
    // act
    final result =
        datasourceImplementation.getMatchesByDate("2022-09-28", "2022-09-29");
    // Assert
    expect(() => result, throwsA(ServerException()));
  });
}
