import 'package:futboa/features/data/models/score_time_model.dart';
import 'package:futboa/features/domain/entities/score_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'score_model.g.dart';

@JsonSerializable()
class ScoreModel extends ScoreEntity {
  final ScoreTimeModel fullTime;
  final ScoreTimeModel halfTime;

  const ScoreModel({
    required super.winner,
    required super.duration,
    required this.fullTime,
    required this.halfTime,
  }) : super(
          fullTime: fullTime,
          halfTime: halfTime,
        );

  factory ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$ScoreModelFromJson(json);

  Map<String, dynamic> toJson() => _$ScoreModelToJson(this);
}
