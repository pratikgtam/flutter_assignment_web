// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trusted_by_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrustedByModel _$TrustedByModelFromJson(Map<String, dynamic> json) {
  return _TrustedByModel.fromJson(json);
}

/// @nodoc
mixin _$TrustedByModel {
  String get websiteUrl => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrustedByModelCopyWith<TrustedByModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrustedByModelCopyWith<$Res> {
  factory $TrustedByModelCopyWith(
          TrustedByModel value, $Res Function(TrustedByModel) then) =
      _$TrustedByModelCopyWithImpl<$Res, TrustedByModel>;
  @useResult
  $Res call({String websiteUrl, String logo});
}

/// @nodoc
class _$TrustedByModelCopyWithImpl<$Res, $Val extends TrustedByModel>
    implements $TrustedByModelCopyWith<$Res> {
  _$TrustedByModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? websiteUrl = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      websiteUrl: null == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrustedByModelImplCopyWith<$Res>
    implements $TrustedByModelCopyWith<$Res> {
  factory _$$TrustedByModelImplCopyWith(_$TrustedByModelImpl value,
          $Res Function(_$TrustedByModelImpl) then) =
      __$$TrustedByModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String websiteUrl, String logo});
}

/// @nodoc
class __$$TrustedByModelImplCopyWithImpl<$Res>
    extends _$TrustedByModelCopyWithImpl<$Res, _$TrustedByModelImpl>
    implements _$$TrustedByModelImplCopyWith<$Res> {
  __$$TrustedByModelImplCopyWithImpl(
      _$TrustedByModelImpl _value, $Res Function(_$TrustedByModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? websiteUrl = null,
    Object? logo = null,
  }) {
    return _then(_$TrustedByModelImpl(
      websiteUrl: null == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrustedByModelImpl implements _TrustedByModel {
  _$TrustedByModelImpl({required this.websiteUrl, required this.logo});

  factory _$TrustedByModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrustedByModelImplFromJson(json);

  @override
  final String websiteUrl;
  @override
  final String logo;

  @override
  String toString() {
    return 'TrustedByModel(websiteUrl: $websiteUrl, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrustedByModelImpl &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, websiteUrl, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrustedByModelImplCopyWith<_$TrustedByModelImpl> get copyWith =>
      __$$TrustedByModelImplCopyWithImpl<_$TrustedByModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrustedByModelImplToJson(
      this,
    );
  }
}

abstract class _TrustedByModel implements TrustedByModel {
  factory _TrustedByModel(
      {required final String websiteUrl,
      required final String logo}) = _$TrustedByModelImpl;

  factory _TrustedByModel.fromJson(Map<String, dynamic> json) =
      _$TrustedByModelImpl.fromJson;

  @override
  String get websiteUrl;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$TrustedByModelImplCopyWith<_$TrustedByModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
