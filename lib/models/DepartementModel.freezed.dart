// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DepartementModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepartementModel _$DepartementModelFromJson(Map<String, dynamic> json) {
  return _DepartementModel.fromJson(json);
}

/// @nodoc
mixin _$DepartementModel {
  @JsonKey(name: "num_dep")
  String get numDep => throw _privateConstructorUsedError;
  @JsonKey(name: "dep_name")
  String get depName => throw _privateConstructorUsedError;
  @JsonKey(name: "region_name")
  String get regionName => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  /// Serializes this DepartementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DepartementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartementModelCopyWith<DepartementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartementModelCopyWith<$Res> {
  factory $DepartementModelCopyWith(
          DepartementModel value, $Res Function(DepartementModel) then) =
      _$DepartementModelCopyWithImpl<$Res, DepartementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "num_dep") String numDep,
      @JsonKey(name: "dep_name") String depName,
      @JsonKey(name: "region_name") String regionName,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class _$DepartementModelCopyWithImpl<$Res, $Val extends DepartementModel>
    implements $DepartementModelCopyWith<$Res> {
  _$DepartementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numDep = null,
    Object? depName = null,
    Object? regionName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      numDep: null == numDep
          ? _value.numDep
          : numDep // ignore: cast_nullable_to_non_nullable
              as String,
      depName: null == depName
          ? _value.depName
          : depName // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartementModelImplCopyWith<$Res>
    implements $DepartementModelCopyWith<$Res> {
  factory _$$DepartementModelImplCopyWith(_$DepartementModelImpl value,
          $Res Function(_$DepartementModelImpl) then) =
      __$$DepartementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "num_dep") String numDep,
      @JsonKey(name: "dep_name") String depName,
      @JsonKey(name: "region_name") String regionName,
      @JsonKey(name: "description") String description});
}

/// @nodoc
class __$$DepartementModelImplCopyWithImpl<$Res>
    extends _$DepartementModelCopyWithImpl<$Res, _$DepartementModelImpl>
    implements _$$DepartementModelImplCopyWith<$Res> {
  __$$DepartementModelImplCopyWithImpl(_$DepartementModelImpl _value,
      $Res Function(_$DepartementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numDep = null,
    Object? depName = null,
    Object? regionName = null,
    Object? description = null,
  }) {
    return _then(_$DepartementModelImpl(
      numDep: null == numDep
          ? _value.numDep
          : numDep // ignore: cast_nullable_to_non_nullable
              as String,
      depName: null == depName
          ? _value.depName
          : depName // ignore: cast_nullable_to_non_nullable
              as String,
      regionName: null == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartementModelImpl
    with DiagnosticableTreeMixin
    implements _DepartementModel {
  const _$DepartementModelImpl(
      {@JsonKey(name: "num_dep") required this.numDep,
      @JsonKey(name: "dep_name") required this.depName,
      @JsonKey(name: "region_name") required this.regionName,
      @JsonKey(name: "description") required this.description});

  factory _$DepartementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartementModelImplFromJson(json);

  @override
  @JsonKey(name: "num_dep")
  final String numDep;
  @override
  @JsonKey(name: "dep_name")
  final String depName;
  @override
  @JsonKey(name: "region_name")
  final String regionName;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DepartementModel(numDep: $numDep, depName: $depName, regionName: $regionName, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DepartementModel'))
      ..add(DiagnosticsProperty('numDep', numDep))
      ..add(DiagnosticsProperty('depName', depName))
      ..add(DiagnosticsProperty('regionName', regionName))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartementModelImpl &&
            (identical(other.numDep, numDep) || other.numDep == numDep) &&
            (identical(other.depName, depName) || other.depName == depName) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, numDep, depName, regionName, description);

  /// Create a copy of DepartementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartementModelImplCopyWith<_$DepartementModelImpl> get copyWith =>
      __$$DepartementModelImplCopyWithImpl<_$DepartementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartementModelImplToJson(
      this,
    );
  }
}

abstract class _DepartementModel implements DepartementModel {
  const factory _DepartementModel(
          {@JsonKey(name: "num_dep") required final String numDep,
          @JsonKey(name: "dep_name") required final String depName,
          @JsonKey(name: "region_name") required final String regionName,
          @JsonKey(name: "description") required final String description}) =
      _$DepartementModelImpl;

  factory _DepartementModel.fromJson(Map<String, dynamic> json) =
      _$DepartementModelImpl.fromJson;

  @override
  @JsonKey(name: "num_dep")
  String get numDep;
  @override
  @JsonKey(name: "dep_name")
  String get depName;
  @override
  @JsonKey(name: "region_name")
  String get regionName;
  @override
  @JsonKey(name: "description")
  String get description;

  /// Create a copy of DepartementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartementModelImplCopyWith<_$DepartementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
