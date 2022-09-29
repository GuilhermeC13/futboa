import 'package:equatable/equatable.dart';

class SeasonEntity extends Equatable {
  final int id;
  final String startDate;
  final String endDate;
  final int currentMatchday;

  const SeasonEntity(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.currentMatchday});

  @override
  List<Object?> get props => [id, startDate, endDate, currentMatchday];
}
