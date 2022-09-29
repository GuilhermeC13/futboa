// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStatsModel _$TeamStatsModelFromJson(Map<String, dynamic> json) =>
    TeamStatsModel(
      played: json['played'] as int,
      win: json['win'] as int,
      draw: json['draw'] as int,
      lose: json['lose'] as int,
      goals: GoalsModel.fromJson(json['goals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeamStatsModelToJson(TeamStatsModel instance) =>
    <String, dynamic>{
      'played': instance.played,
      'win': instance.win,
      'draw': instance.draw,
      'lose': instance.lose,
      'goals': instance.goals,
    };
