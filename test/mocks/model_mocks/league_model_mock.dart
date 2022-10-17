import 'package:futboa/features/data/models/area_model.dart';
import 'package:futboa/features/data/models/league_model.dart';
import 'package:futboa/features/data/models/season_model.dart';

const tLeagueModel = LeagueModel(
  id: 2013,
  area: AreaModel(
    id: 2032,
    name: "Brazil",
    code: "BRA",
    flag: "https://crests.football-data.org/764.svg",
  ),
  name: "Campeonato Brasileiro Série A",
  code: "BSA",
  type: "LEAGUE",
  emblem: "https://crests.football-data.org/764.svg",
  currentSeason: SeasonModel(
    id: 1377,
    startDate: "2022-04-10",
    endDate: "2022-11-13",
    currentMatchday: 27,
  ),
);

const tListLeagueModel = [
  LeagueModel(
    id: 2013,
    area: AreaModel(
      id: 2032,
      name: "Brazil",
      code: "BRA",
      flag: "https://crests.football-data.org/764.svg",
    ),
    name: "Campeonato Brasileiro Série A",
    code: "BSA",
    type: "LEAGUE",
    emblem: "https://crests.football-data.org/764.svg",
    currentSeason: SeasonModel(
      id: 1377,
      startDate: "2022-04-10",
      endDate: "2022-11-13",
      currentMatchday: 27,
    ),
  ),
  LeagueModel(
    id: 2013,
    area: AreaModel(
      id: 2032,
      name: "Brazil",
      code: "BRA",
      flag: "https://crests.football-data.org/764.svg",
    ),
    name: "Campeonato Brasileiro Série A",
    code: "BSA",
    type: "LEAGUE",
    emblem: "https://crests.football-data.org/764.svg",
    currentSeason: SeasonModel(
      id: 1377,
      startDate: "2022-04-10",
      endDate: "2022-11-13",
      currentMatchday: 27,
    ),
  ),
];
