import 'package:equatable/equatable.dart';
import 'package:futboa/features/domain/entities/team_entity.dart';
import 'package:futboa/features/domain/entities/team_stats_entity.dart';

class StandingEntity extends Equatable {
  final int rank;
  final TeamEntity team;
  final int points;
  final int goalsDiff;
  final TeamStatsEntity all;

  const StandingEntity({
    required this.rank,
    required this.team,
    required this.points,
    required this.goalsDiff,
    required this.all,
  });

  @override
  List<Object?> get props => [rank, team, points, goalsDiff, all];
}
