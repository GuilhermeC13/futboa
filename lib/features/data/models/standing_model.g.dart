// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'standing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StandingModel _$StandingModelFromJson(Map<String, dynamic> json) =>
    StandingModel(
      position: json['position'] as int,
      team: TeamModel.fromJson(json['team'] as Map<String, dynamic>),
      playedGames: json['playedGames'] as int,
      form: json['form'] as String,
      won: json['won'] as int,
      draw: json['draw'] as int,
      lost: json['lost'] as int,
      points: json['points'] as int,
      goalsFor: json['goalsFor'] as int,
      goalsAgainst: json['goalsAgainst'] as int,
      goalDifference: json['goalDifference'] as int,
    );

Map<String, dynamic> _$StandingModelToJson(StandingModel instance) =>
    <String, dynamic>{
      'position': instance.position,
      'playedGames': instance.playedGames,
      'form': instance.form,
      'won': instance.won,
      'draw': instance.draw,
      'lost': instance.lost,
      'points': instance.points,
      'goalsFor': instance.goalsFor,
      'goalsAgainst': instance.goalsAgainst,
      'goalDifference': instance.goalDifference,
      'team': instance.team,
    };
