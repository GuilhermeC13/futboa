import 'package:futboa/features/domain/entities/team_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_model.g.dart';

@JsonSerializable()
class TeamModel extends TeamEntity {
  const TeamModel(
      {required super.id, required super.name, required super.logo});

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamModelToJson(this);
}
