import 'package:futboa/features/data/models/team_model.dart';
import 'package:futboa/features/domain/entities/standing_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'standing_model.g.dart';

@JsonSerializable()
class StandingModel extends StandingEntity {
  final TeamModel team;
  const StandingModel({
    required super.position,
    required this.team,
    required super.playedGames,
    required super.form,
    required super.won,
    required super.draw,
    required super.lost,
    required super.points,
    required super.goalsFor,
    required super.goalsAgainst,
    required super.goalDifference,
  }) : super(team: team);

  factory StandingModel.fromJson(Map<String, dynamic> json) =>
      _$StandingModelFromJson(json);

  Map<String, dynamic> toJson() => _$StandingModelToJson(this);
}
