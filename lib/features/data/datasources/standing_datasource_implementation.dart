import 'dart:convert';

import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/endpoints/football_data_api_endpoints.dart';
import 'package:futboa/features/data/datasources/standing_datasource.dart';
import 'package:futboa/features/data/models/standing_model.dart';

class StandingDatasourceImplementation implements StandingDatasource {
  final HttpClient client;

  StandingDatasourceImplementation(this.client);

  @override
  Future<List<StandingModel>> getLeagueStanding(
      int leagueId, int season) async {
    final response =
        await client.get(FootballDataApiEndpoints.standing(leagueId, season));

    if (response.statusCode == 200) {
      List<StandingModel> standing = [];

      final jsonResponse = json.decode(response.body);

      standing = (jsonResponse['standings'][0]['table'] as List)
          .map((i) => StandingModel.fromJson(i))
          .toList();

      return standing;
    } else {
      throw ServerException();
    }
  }
}
