import 'package:equatable/equatable.dart';

class GoalsEntity extends Equatable {
  final int goalsFor;
  final int goalsAgainst;

  const GoalsEntity({
    required this.goalsFor,
    required this.goalsAgainst,
  });

  @override
  List<Object?> get props => [goalsFor, goalsAgainst];
}
