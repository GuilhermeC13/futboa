import 'package:futboa/features/data/models/area_model.dart';
import 'package:futboa/features/data/models/season_model.dart';
import 'package:futboa/features/domain/entities/league_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'league_model.g.dart';

@JsonSerializable()
class LeagueModel extends LeagueEntity {
  final AreaModel? area;
  final SeasonModel? currentSeason;
  const LeagueModel({
    required super.id,
    this.area,
    required super.name,
    required super.code,
    required super.type,
    required super.emblem,
    this.currentSeason,
  }) : super(area: area, currentSeason: currentSeason);

  factory LeagueModel.fromJson(Map<String, dynamic> json) =>
      _$LeagueModelFromJson(json);

  Map<String, dynamic> toJson() => _$LeagueModelToJson(this);
}
