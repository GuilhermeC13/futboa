import 'package:equatable/equatable.dart';
import 'package:futboa/features/domain/entities/score_time_entity.dart';

class ScoreEntity extends Equatable {
  final String? winner;
  final String duration;
  final ScoreTimeEntity fullTime;
  final ScoreTimeEntity halfTime;

  const ScoreEntity({
    required this.winner,
    required this.duration,
    required this.fullTime,
    required this.halfTime,
  });

  @override
  List<Object?> get props => [winner, duration, fullTime, halfTime];
}
