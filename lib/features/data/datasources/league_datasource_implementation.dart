import 'dart:convert';

import 'package:futboa/core/http_client/http_client.dart';
import 'package:futboa/core/usecase/errors/exceptions.dart';
import 'package:futboa/features/data/datasources/endpoints/football_data_api_endpoints.dart';
import 'package:futboa/features/data/datasources/league_datasource.dart';
import 'package:futboa/features/data/models/league_model.dart';

class LeagueDatasourceImplementation implements LeagueDatasource {
  final HttpClient client;

  LeagueDatasourceImplementation(this.client);

  @override
  Future<LeagueModel> getLeagueFromLeagueCode(String code) async {
    final response = await client.get(FootballDataApiEndpoints.league(
      code,
    ));

    if (response.statusCode == 200) {
      return LeagueModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<LeagueModel>> getAllLeagues() async {
    final response = await client.get(FootballDataApiEndpoints.leagues());

    if (response.statusCode == 200) {
      List<LeagueModel> leagues = [];

      final jsonResponse = json.decode(response.body);

      leagues = (jsonResponse["competitions"] as List)
          .map((i) => LeagueModel.fromJson(i))
          .toList();
      return leagues;
    } else {
      throw ServerException();
    }
  }
}
