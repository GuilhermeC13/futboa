import 'package:futboa/features/domain/entities/area_entity.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';
import 'package:futboa/features/domain/entities/score_entity.dart';
import 'package:futboa/features/domain/entities/score_time_entity.dart';
import 'package:futboa/features/domain/entities/season_entity.dart';
import 'package:futboa/features/domain/entities/team_entity.dart';

const tListMatchEntity = [
  MatchEntity(
    area: AreaEntity(
        id: 2032,
        name: "Brazil",
        code: "BRA",
        flag: "https://crests.football-data.org/764.svg"),
    competition: LeagueEntity(
      id: 2013,
      name: "Campeonato Brasileiro Série A",
      code: "BSA",
      type: "LEAGUE",
      emblem: "https://crests.football-data.org/764.svg",
    ),
    season: SeasonEntity(
      id: 1377,
      startDate: "2022-04-10",
      endDate: "2022-11-13",
      currentMatchday: 28,
    ),
    id: 390125,
    utcDate: "2022-09-28T00:00:00Z",
    status: "TIMED",
    matchday: 28,
    stage: "REGULAR_SEASON",
    group: null,
    lastUpdated: "2022-09-26T01:32:00Z",
    homeTeam: TeamEntity(
      id: 6685,
      name: "Santos FC",
      shortName: "Santos",
      tla: "SAN",
      crest: "https://crests.football-data.org/6685.svg",
    ),
    awayTeam: TeamEntity(
      id: 1768,
      name: "CA Paranaense",
      shortName: "Paranaense",
      tla: "CAP",
      crest: "https://crests.football-data.org/1768.png",
    ),
    score: ScoreEntity(
      winner: null,
      duration: "REGULAR",
      fullTime: ScoreTimeEntity(
        home: null,
        away: null,
      ),
      halfTime: ScoreTimeEntity(
        home: null,
        away: null,
      ),
    ),
  ),
  MatchEntity(
    area: AreaEntity(
        id: 2032,
        name: "Brazil",
        code: "BRA",
        flag: "https://crests.football-data.org/764.svg"),
    competition: LeagueEntity(
      id: 2013,
      name: "Campeonato Brasileiro Série A",
      code: "BSA",
      type: "LEAGUE",
      emblem: "https://crests.football-data.org/764.svg",
    ),
    season: SeasonEntity(
      id: 1377,
      startDate: "2022-04-10",
      endDate: "2022-11-13",
      currentMatchday: 28,
    ),
    id: 390125,
    utcDate: "2022-09-28T00:00:00Z",
    status: "TIMED",
    matchday: 28,
    stage: "REGULAR_SEASON",
    group: null,
    lastUpdated: "2022-09-26T01:32:00Z",
    homeTeam: TeamEntity(
      id: 6685,
      name: "Santos FC",
      shortName: "Santos",
      tla: "SAN",
      crest: "https://crests.football-data.org/6685.svg",
    ),
    awayTeam: TeamEntity(
      id: 1768,
      name: "CA Paranaense",
      shortName: "Paranaense",
      tla: "CAP",
      crest: "https://crests.football-data.org/1768.png",
    ),
    score: ScoreEntity(
      winner: null,
      duration: "REGULAR",
      fullTime: ScoreTimeEntity(
        home: null,
        away: null,
      ),
      halfTime: ScoreTimeEntity(
        home: null,
        away: null,
      ),
    ),
  ),
  MatchEntity(
    area: AreaEntity(
        id: 2032,
        name: "Brazil",
        code: "BRA",
        flag: "https://crests.football-data.org/764.svg"),
    competition: LeagueEntity(
      id: 2013,
      name: "Campeonato Brasileiro Série A",
      code: "BSA",
      type: "LEAGUE",
      emblem: "https://crests.football-data.org/764.svg",
    ),
    season: SeasonEntity(
      id: 1377,
      startDate: "2022-04-10",
      endDate: "2022-11-13",
      currentMatchday: 28,
    ),
    id: 390125,
    utcDate: "2022-09-28T00:00:00Z",
    status: "TIMED",
    matchday: 28,
    stage: "REGULAR_SEASON",
    group: null,
    lastUpdated: "2022-09-26T01:32:00Z",
    homeTeam: TeamEntity(
      id: 6685,
      name: "Santos FC",
      shortName: "Santos",
      tla: "SAN",
      crest: "https://crests.football-data.org/6685.svg",
    ),
    awayTeam: TeamEntity(
      id: 1768,
      name: "CA Paranaense",
      shortName: "Paranaense",
      tla: "CAP",
      crest: "https://crests.football-data.org/1768.png",
    ),
    score: ScoreEntity(
      winner: null,
      duration: "REGULAR",
      fullTime: ScoreTimeEntity(
        home: null,
        away: null,
      ),
      halfTime: ScoreTimeEntity(
        home: null,
        away: null,
      ),
    ),
  ),
];
