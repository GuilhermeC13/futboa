import 'package:equatable/equatable.dart';

class TeamMatchEntity extends Equatable {
  final int id;
  final String name;
  final String shortName;
  final String tla;
  final String crest;

  const TeamMatchEntity({
    required this.id,
    required this.name,
    required this.shortName,
    required this.tla,
    required this.crest,
  });

  @override
  List<Object?> get props => [id, name, shortName, tla, crest];
}
