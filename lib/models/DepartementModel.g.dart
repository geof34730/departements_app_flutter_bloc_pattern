// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DepartementModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartementModelImpl _$$DepartementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DepartementModelImpl(
      numDep: json['num_dep'] as String,
      depName: json['dep_name'] as String,
      regionName: json['region_name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DepartementModelImplToJson(
        _$DepartementModelImpl instance) =>
    <String, dynamic>{
      'num_dep': instance.numDep,
      'dep_name': instance.depName,
      'region_name': instance.regionName,
      'description': instance.description,
    };
