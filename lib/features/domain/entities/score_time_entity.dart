import 'package:equatable/equatable.dart';

class ScoreTimeEntity extends Equatable {
  final int? home;
  final int? away;

  const ScoreTimeEntity({
    required this.home,
    required this.away,
  });

  @override
  List<Object?> get props => [home, away];
}
