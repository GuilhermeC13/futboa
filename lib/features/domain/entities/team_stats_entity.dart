import 'package:equatable/equatable.dart';
import 'package:futboa/features/domain/entities/goals_entity.dart';

class TeamStatsEntity extends Equatable {
  final int played;
  final int win;
  final int draw;
  final int lose;
  final GoalsEntity goals;

  const TeamStatsEntity({
    required this.played,
    required this.win,
    required this.draw,
    required this.lose,
    required this.goals,
  });

  @override
  List<Object?> get props => [played, win, draw, lose, goals];
}
