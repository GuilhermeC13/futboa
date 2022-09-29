// ignore_for_file: annotate_overrides

import 'package:futboa/features/data/models/area_model.dart';
import 'package:futboa/features/data/models/league_model.dart';
import 'package:futboa/features/data/models/score_model.dart';
import 'package:futboa/features/data/models/season_model.dart';
import 'package:futboa/features/data/models/team_match_model.dart';
import 'package:futboa/features/domain/entities/match_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'match_model.g.dart';

@JsonSerializable()
class MatchModel extends MatchEntity {
  final AreaModel area;
  final LeagueModel competition;
  final SeasonModel season;
  final TeamMatchModel homeTeam;
  final TeamMatchModel awayTeam;
  final ScoreModel score;

  const MatchModel({
    required this.area,
    required this.competition,
    required this.season,
    required super.id,
    required super.utcDate,
    required super.status,
    required super.matchday,
    required super.stage,
    required super.group,
    required super.lastUpdated,
    required this.homeTeam,
    required this.awayTeam,
    required this.score,
  }) : super(
          area: area,
          competition: competition,
          season: season,
          homeTeam: homeTeam,
          awayTeam: awayTeam,
          score: score,
        );

  factory MatchModel.fromJson(Map<String, dynamic> json) =>
      _$MatchModelFromJson(json);

  Map<String, dynamic> toJson() => _$MatchModelToJson(this);
}
