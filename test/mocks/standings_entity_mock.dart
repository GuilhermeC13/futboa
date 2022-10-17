import 'package:futboa/features/domain/entities/goals_entity.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:futboa/features/domain/entities/team_stats_entity.dart';

import 'team_entity_mock.dart';

const List<StandingEntity> tStandings = [
  StandingEntity(
      position: 1,
      team: tTeamEntity,
      playedGames: 30,
      form: "W,W,W,W,W",
      won: 19,
      draw: 9,
      lost: 2,
      points: 66,
      goalsFor: 52,
      goalsAgainst: 20,
      goalDifference: 32),
];

const tAll =
    TeamStatsEntity(played: 5, win: 4, draw: 0, lose: 1, goals: tGoals);

const tGoals = GoalsEntity(goalsFor: 15, goalsAgainst: 5);
