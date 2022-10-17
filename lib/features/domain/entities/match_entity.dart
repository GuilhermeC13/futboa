import 'package:equatable/equatable.dart';
import 'package:futboa/features/domain/entities/area_entity.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:futboa/features/domain/entities/score_entity.dart';
import 'package:futboa/features/domain/entities/season_entity.dart';
import 'package:futboa/features/domain/entities/team_entity.dart';

class MatchEntity extends Equatable {
  final AreaEntity area;
  final LeagueEntity competition;
  final SeasonEntity season;
  final int id;
  final String utcDate;
  final String status;
  final int matchday;
  final String stage;
  final String? group;
  final String lastUpdated;
  final TeamEntity homeTeam;
  final TeamEntity awayTeam;
  final ScoreEntity score;

  const MatchEntity({
    required this.area,
    required this.competition,
    required this.season,
    required this.id,
    required this.utcDate,
    required this.status,
    required this.matchday,
    required this.stage,
    required this.group,
    required this.lastUpdated,
    required this.homeTeam,
    required this.awayTeam,
    required this.score,
  });

  @override
  List<Object?> get props => [
        area,
        competition,
        season,
        id,
        utcDate,
        status,
        matchday,
        stage,
        group,
        lastUpdated,
        homeTeam,
        awayTeam,
        score,
      ];
}
