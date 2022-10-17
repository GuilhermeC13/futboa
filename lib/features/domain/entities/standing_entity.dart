import 'package:equatable/equatable.dart';
import 'package:futboa/features/domain/entities/team_entity.dart';

class StandingEntity extends Equatable {
  final int position;
  final TeamEntity team;
  final int playedGames;
  final String form;
  final int won;
  final int draw;
  final int lost;
  final int points;
  final int goalsFor;
  final int goalsAgainst;
  final int goalDifference;

  const StandingEntity(
      {required this.position,
      required this.team,
      required this.playedGames,
      required this.form,
      required this.won,
      required this.draw,
      required this.lost,
      required this.points,
      required this.goalsFor,
      required this.goalsAgainst,
      required this.goalDifference});

  @override
  List<Object?> get props => [
        position,
        team,
        playedGames,
        form,
        won,
        draw,
        lost,
        points,
        goalsFor,
        goalsAgainst,
        goalDifference
      ];
}
