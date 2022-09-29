// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => MatchModel(
      area: AreaModel.fromJson(json['area'] as Map<String, dynamic>),
      competition:
          LeagueModel.fromJson(json['competition'] as Map<String, dynamic>),
      season: SeasonModel.fromJson(json['season'] as Map<String, dynamic>),
      id: json['id'] as int,
      utcDate: json['utcDate'] as String,
      status: json['status'] as String,
      matchday: json['matchday'] as int,
      stage: json['stage'] as String,
      group: json['group'] as String?,
      lastUpdated: json['lastUpdated'] as String,
      homeTeam:
          TeamMatchModel.fromJson(json['homeTeam'] as Map<String, dynamic>),
      awayTeam:
          TeamMatchModel.fromJson(json['awayTeam'] as Map<String, dynamic>),
      score: ScoreModel.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchModelToJson(MatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'utcDate': instance.utcDate,
      'status': instance.status,
      'matchday': instance.matchday,
      'stage': instance.stage,
      'group': instance.group,
      'lastUpdated': instance.lastUpdated,
      'area': instance.area,
      'competition': instance.competition,
      'season': instance.season,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'score': instance.score,
    };
