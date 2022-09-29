import 'package:futboa/features/domain/entities/area_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'area_model.g.dart';

@JsonSerializable()
class AreaModel extends AreaEntity {
  const AreaModel({
    required super.id,
    required super.name,
    required super.code,
    required super.flag,
  });

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);

  Map<String, dynamic> toJson() => _$AreaModelToJson(this);
}
