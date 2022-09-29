import 'package:futboa/features/domain/entities/score_time_entity.dart';

class ScoreTimeModel extends ScoreTimeEntity {
  const ScoreTimeModel({required super.home, required super.away});

  factory ScoreTimeModel.fromJson(Map<String, dynamic> json) => ScoreTimeModel(
        home: json['home'],
        away: json['away'],
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
