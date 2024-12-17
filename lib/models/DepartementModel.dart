import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'DepartementModel.freezed.dart';
part 'DepartementModel.g.dart';

DepartementModel DepartementModelListFromJson(String str) => DepartementModel.fromJson(json.decode(str));

@freezed
class DepartementModel with _$DepartementModel {
  const factory DepartementModel({
    @JsonKey(name: "num_dep")
    required String numDep,
    @JsonKey(name: "dep_name")
    required String depName,
    @JsonKey(name: "region_name")
    required String regionName,
    @JsonKey(name: "description")
    required String description,
  }) = _DepartementModel;


  factory DepartementModel.fromJson(Map<String, Object?> json)
  => _$DepartementModelFromJson(json);




}
