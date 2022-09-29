import 'package:futboa/features/domain/entities/season_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'season_model.g.dart';

@JsonSerializable()
class SeasonModel extends SeasonEntity {
  const SeasonModel({
    required super.id,
    required super.startDate,
    required super.endDate,
    required super.currentMatchday,
  });

  factory SeasonModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$SeasonModelToJson(this);
}
