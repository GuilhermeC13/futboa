import 'package:futboa/features/domain/entities/area_entity.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/entities/season_entity.dart';

const tLeagueEntity = LeagueEntity(
  id: 2013,
  area: AreaEntity(
      id: 2032,
      name: "Brazil",
      code: "BRA",
      flag: "https://crests.football-data.org/764.svg"),
  name: "Campeonato Brasileiro Série A",
  code: "BSA",
  type: "LEAGUE",
  emblem: "https://crests.football-data.org/764.svg",
  currentSeason: SeasonEntity(
    id: 1377,
    startDate: "2022-04-10",
    endDate: "2022-11-13",
    currentMatchday: 27,
  ),
);

const tListLeagueEntity = [
  LeagueEntity(
    id: 2013,
    area: AreaEntity(
        id: 2032,
        name: "Brazil",
        code: "BRA",
        flag: "https://crests.football-data.org/764.svg"),
    name: "Campeonato Brasileiro Série A",
    code: "BSA",
    type: "LEAGUE",
    emblem: "https://crests.football-data.org/764.svg",
    currentSeason: SeasonEntity(
      id: 1377,
      startDate: "2022-04-10",
      endDate: "2022-11-13",
      currentMatchday: 27,
    ),
  ),
  LeagueEntity(
    id: 2013,
    area: AreaEntity(
        id: 2032,
        name: "Brazil",
        code: "BRA",
        flag: "https://crests.football-data.org/764.svg"),
    name: "Campeonato Brasileiro Série A",
    code: "BSA",
    type: "LEAGUE",
    emblem: "https://crests.football-data.org/764.svg",
    currentSeason: SeasonEntity(
      id: 1377,
      startDate: "2022-04-10",
      endDate: "2022-11-13",
      currentMatchday: 27,
    ),
  ),
];
