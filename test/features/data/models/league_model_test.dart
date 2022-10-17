import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/features/data/models/area_model.dart';
import 'package:futboa/features/data/models/league_model.dart';
import 'package:futboa/features/data/models/season_model.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';

import '../../../mocks/league_json_mock.dart';
import '../../../mocks/model_mocks/league_model_mock.dart';

void main() {
  test('should be a subclass of LeagueEntity', () {
    expect(tLeagueModel, isA<LeagueEntity>());
  });

  test('should return a valid model', () {
    // Arrange
    final Map<String, dynamic> jsonMap = json.decode(leagueJsonMock);
    // act
    final result = LeagueModel.fromJson(jsonMap);
    // Assert
    expect(result, tLeagueModel);
  });

  test('should return a json map containing the proper data', () {
    // Arrange
    final expectedMap = {
      "id": 2013,
      "area": const AreaModel(
        id: 2032,
        name: "Brazil",
        code: "BRA",
        flag: "https://crests.football-data.org/764.svg",
      ),
      "name": "Campeonato Brasileiro Série A",
      "code": "BSA",
      "type": "LEAGUE",
      "emblem": "https://crests.football-data.org/764.svg",
      "currentSeason": const SeasonModel(
        id: 1377,
        startDate: "2022-04-10",
        endDate: "2022-11-13",
        currentMatchday: 27,
      ),
    };
    // act
    final result = tLeagueModel.toJson();
    // Assert
    expect(result, expectedMap);
  });
}
