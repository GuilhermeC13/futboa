import 'package:equatable/equatable.dart';

class AreaEntity extends Equatable {
  final int id;
  final String name;
  final String code;
  final String? flag;

  const AreaEntity(
      {required this.id,
      required this.name,
      required this.code,
      required this.flag});

  @override
  List<Object?> get props => [id, name, code, flag];
}
