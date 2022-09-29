import 'package:futboa/features/data/models/goals_model.dart';
import 'package:futboa/features/domain/entities/team_stats_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_stats_model.g.dart';

@JsonSerializable()
class TeamStatsModel extends TeamStatsEntity {
  final GoalsModel goals;
  const TeamStatsModel({
    required super.played,
    required super.win,
    required super.draw,
    required super.lose,
    required this.goals,
  }) : super(goals: goals);

  factory TeamStatsModel.fromJson(Map<String, dynamic> json) =>
      _$TeamStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStatsModelToJson(this);
}
