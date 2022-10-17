// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) => ScoreModel(
      winner: json['winner'] as String?,
      duration: json['duration'] as String,
      fullTime:
          ScoreTimeModel.fromJson(json['fullTime'] as Map<String, dynamic>),
      halfTime:
          ScoreTimeModel.fromJson(json['halfTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScoreModelToJson(ScoreModel instance) =>
    <String, dynamic>{
      'winner': instance.winner,
      'duration': instance.duration,
      'fullTime': instance.fullTime,
      'halfTime': instance.halfTime,
    };
