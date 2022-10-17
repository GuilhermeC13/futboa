import 'package:equatable/equatable.dart';

class TeamEntity extends Equatable {
  final int id;
  final String name;
  final String shortName;
  final String tla;
  final String crest;

  const TeamEntity({
    required this.id,
    required this.name,
    required this.shortName,
    required this.tla,
    required this.crest,
  });

  @override
  List<Object?> get props => [id, name, shortName, tla, crest];
}
