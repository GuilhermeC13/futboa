import 'dart:convert';

import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/endpoints/football_data_api_endpoints.dart';
import 'package:futboa/features/data/datasources/match_datasource.dart';
import 'package:futboa/features/data/models/match_model.dart';

class MatchDatasourceImplementation implements MatchDatasource {
  final HttpClient client;

  MatchDatasourceImplementation(this.client);

  @override
  Future<List<MatchModel>> getMatchesByDate(
      String dateFrom, String dateTo) async {
    final response =
        await client.get(FootballDataApiEndpoints.matches(dateFrom, dateTo));

    if (response.statusCode == 200) {
      List<MatchModel> matches = [];

      final jsonResponse = json.decode(response.body);

      matches = (jsonResponse['matches'] as List)
          .map((i) => MatchModel.fromJson(i))
          .toList();
      return matches;
    } else {
      throw ServerException();
    }
  }
}
