import 'package:futboa/features/domain/entities/goals_entity.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:futboa/features/domain/entities/team_stats_entity.dart';

import 'team_entity_mock.dart';

const List<StandingEntity> tStandings = [
  StandingEntity(
      rank: 1, team: tTeamEntity, points: 25, goalsDiff: 10, all: tAll),
  StandingEntity(
      rank: 1, team: tTeamEntity, points: 25, goalsDiff: 10, all: tAll)
];

const tAll =
    TeamStatsEntity(played: 5, win: 4, draw: 0, lose: 1, goals: tGoals);

const tGoals = GoalsEntity(goalsFor: 15, goalsAgainst: 5);
