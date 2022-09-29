import 'package:futboa/features/domain/entities/goals_entity.dart';

class GoalsModel extends GoalsEntity {
  const GoalsModel({required super.goalsFor, required super.goalsAgainst});

  factory GoalsModel.fromJson(Map<String, dynamic> json) => GoalsModel(
        goalsFor: json['for'],
        goalsAgainst: json['against'],
      );

  Map<String, dynamic> toJson() => {
        'for': goalsFor,
        'against': goalsAgainst,
      };
}
