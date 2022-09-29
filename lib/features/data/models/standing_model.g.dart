// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingModel _$StandingModelFromJson(Map<String, dynamic> json) =>
    StandingModel(
      rank: json['rank'] as int,
      team: TeamModel.fromJson(json['team'] as Map<String, dynamic>),
      points: json['points'] as int,
      goalsDiff: json['goalsDiff'] as int,
      all: TeamStatsModel.fromJson(json['all'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StandingModelToJson(StandingModel instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'points': instance.points,
      'goalsDiff': instance.goalsDiff,
      'team': instance.team,
      'all': instance.all,
    };
