import 'package:futboa/features/data/models/team_model.dart';
import 'package:futboa/features/data/models/team_stats_model.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'standing_model.g.dart';

@JsonSerializable()
class StandingModel extends StandingEntity {
  final TeamModel team;
  final TeamStatsModel all;
  const StandingModel(
      {required super.rank,
      required this.team,
      required super.points,
      required super.goalsDiff,
      required this.all})
      : super(team: team, all: all);

  factory StandingModel.fromJson(Map<String, dynamic> json) =>
      _$StandingModelFromJson(json);

  Map<String, dynamic> toJson() => _$StandingModelToJson(this);
}
