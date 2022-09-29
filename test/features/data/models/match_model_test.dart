import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:futboa/features/data/models/area_model.dart';
import 'package:futboa/features/data/models/league_model.dart';
import 'package:futboa/features/data/models/match_model.dart';
import 'package:futboa/features/data/models/score_model.dart';
import 'package:futboa/features/data/models/score_time_model.dart';
import 'package:futboa/features/data/models/season_model.dart';
import 'package:futboa/features/data/models/team_match_model.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';

import '../../../mocks/match_json_mock.dart';
import '../../../mocks/match_model_mock.dart';

void main() {
  test('should be a subclass of MatchEntity', () {
    expect(tMatchModelMock, isA<MatchEntity>());
  });

  test('should return a valid model', () {
    // Arrange
    final Map<String, dynamic> jsonMap = json.decode(tMatchJsonMock);
    // act
    final result = MatchModel.fromJson(jsonMap);
    // Assert
    expect(result, tMatchModelMock);
  });

  test('should return a json map containing the proper data', () {
    // Arrange
    final expectedMap = {
      "area": const AreaModel(
        id: 2032,
        name: "Brazil",
        code: "BRA",
        flag: "https://crests.football-data.org/764.svg",
      ),
      "competition": const LeagueModel(
        id: 2013,
        name: "Campeonato Brasileiro Série A",
        code: "BSA",
        type: "LEAGUE",
        emblem: "https://crests.football-data.org/764.svg",
      ),
      "season": const SeasonModel(
          id: 1377,
          startDate: "2022-04-10",
          endDate: "2022-11-13",
          currentMatchday: 28),
      "id": 390125,
      "utcDate": "2022-09-28T00:00:00Z",
      "status": "TIMED",
      "matchday": 28,
      "stage": "REGULAR_SEASON",
      "group": null,
      "lastUpdated": "2022-09-26T01:32:00Z",
      "homeTeam": const TeamMatchModel(
        id: 6685,
        name: "Santos FC",
        shortName: "Santos",
        tla: "SAN",
        crest: "https://crests.football-data.org/6685.svg",
      ),
      "awayTeam": const TeamMatchModel(
        id: 1768,
        name: "CA Paranaense",
        shortName: "Paranaense",
        tla: "CAP",
        crest: "https://crests.football-data.org/1768.png",
      ),
      "score": const ScoreModel(
        winner: null,
        duration: "REGULAR",
        fullTime: ScoreTimeModel(home: null, away: null),
        halfTime: ScoreTimeModel(home: null, away: null),
      )
    };
    // act
    final result = tMatchModelMock.toJson();
    // Assert
    expect(result, expectedMap);
  });
}
