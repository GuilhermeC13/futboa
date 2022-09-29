import 'package:futboa/features/domain/entities/team_match_entity.dart';

class TeamMatchModel extends TeamMatchEntity {
  const TeamMatchModel(
      {required super.id,
      required super.name,
      required super.shortName,
      required super.tla,
      required super.crest});

  factory TeamMatchModel.fromJson(Map<String, dynamic> json) => TeamMatchModel(
        id: json['id'],
        name: json['name'],
        shortName: json['shortName'],
        tla: json['tla'],
        crest: json['crest'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'shortName': shortName,
        'tla': tla,
        'crest': crest,
      };
}
