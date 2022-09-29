// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeagueModel _$LeagueModelFromJson(Map<String, dynamic> json) => LeagueModel(
      id: json['id'] as int,
      area: json['area'] == null
          ? null
          : AreaModel.fromJson(json['area'] as Map<String, dynamic>),
      name: json['name'] as String,
      code: json['code'] as String,
      type: json['type'] as String,
      emblem: json['emblem'] as String,
      currentSeason: json['currentSeason'] == null
          ? null
          : SeasonModel.fromJson(json['currentSeason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeagueModelToJson(LeagueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'type': instance.type,
      'emblem': instance.emblem,
      'area': instance.area,
      'currentSeason': instance.currentSeason,
    };
