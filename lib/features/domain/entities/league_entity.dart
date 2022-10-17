import 'package:equatable/equatable.dart';
import 'package:futboa/features/domain/entities/area_entity.dart';
import 'package:futboa/features/domain/entities/season_entity.dart';

class LeagueEntity extends Equatable {
  final int id;
  final AreaEntity? area;
  final String name;
  final String code;
  final String type;
  final String emblem;
  final SeasonEntity? currentSeason;

  const LeagueEntity({
    required this.id,
    this.area,
    required this.name,
    required this.code,
    required this.type,
    required this.emblem,
    this.currentSeason,
  });

  @override
  List<Object?> get props =>
      [id, area, name, code, type, emblem, currentSeason];
}
