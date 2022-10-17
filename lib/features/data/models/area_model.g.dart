// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaModel _$AreaModelFromJson(Map<String, dynamic> json) => AreaModel(
      id: json['id'] as int,
      name: json['name'] as String,
      code: json['code'] as String,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$AreaModelToJson(AreaModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'flag': instance.flag,
    };
