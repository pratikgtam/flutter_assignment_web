// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protfolio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PortfolioState _$PortfolioStateFromJson(Map<String, dynamic> json) {
  return _PortfolioState.fromJson(json);
}

/// @nodoc
mixin _$PortfolioState {
  List<PortfolioModel> get portfolioList => throw _privateConstructorUsedError;
  GitHubProfileModel? get githubProfile => throw _privateConstructorUsedError;
  List<TrustedByModel> get trustedBy => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioStateCopyWith<PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(
          PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res, PortfolioState>;
  @useResult
  $Res call(
      {List<PortfolioModel> portfolioList,
      GitHubProfileModel? githubProfile,
      List<TrustedByModel> trustedBy,
      bool isLoading});

  $GitHubProfileModelCopyWith<$Res>? get githubProfile;
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res, $Val extends PortfolioState>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolioList = null,
    Object? githubProfile = freezed,
    Object? trustedBy = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      portfolioList: null == portfolioList
          ? _value.portfolioList
          : portfolioList // ignore: cast_nullable_to_non_nullable
              as List<PortfolioModel>,
      githubProfile: freezed == githubProfile
          ? _value.githubProfile
          : githubProfile // ignore: cast_nullable_to_non_nullable
              as GitHubProfileModel?,
      trustedBy: null == trustedBy
          ? _value.trustedBy
          : trustedBy // ignore: cast_nullable_to_non_nullable
              as List<TrustedByModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GitHubProfileModelCopyWith<$Res>? get githubProfile {
    if (_value.githubProfile == null) {
      return null;
    }

    return $GitHubProfileModelCopyWith<$Res>(_value.githubProfile!, (value) {
      return _then(_value.copyWith(githubProfile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PortfolioStateImplCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory _$$PortfolioStateImplCopyWith(_$PortfolioStateImpl value,
          $Res Function(_$PortfolioStateImpl) then) =
      __$$PortfolioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PortfolioModel> portfolioList,
      GitHubProfileModel? githubProfile,
      List<TrustedByModel> trustedBy,
      bool isLoading});

  @override
  $GitHubProfileModelCopyWith<$Res>? get githubProfile;
}

/// @nodoc
class __$$PortfolioStateImplCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res, _$PortfolioStateImpl>
    implements _$$PortfolioStateImplCopyWith<$Res> {
  __$$PortfolioStateImplCopyWithImpl(
      _$PortfolioStateImpl _value, $Res Function(_$PortfolioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? portfolioList = null,
    Object? githubProfile = freezed,
    Object? trustedBy = null,
    Object? isLoading = null,
  }) {
    return _then(_$PortfolioStateImpl(
      portfolioList: null == portfolioList
          ? _value._portfolioList
          : portfolioList // ignore: cast_nullable_to_non_nullable
              as List<PortfolioModel>,
      githubProfile: freezed == githubProfile
          ? _value.githubProfile
          : githubProfile // ignore: cast_nullable_to_non_nullable
              as GitHubProfileModel?,
      trustedBy: null == trustedBy
          ? _value._trustedBy
          : trustedBy // ignore: cast_nullable_to_non_nullable
              as List<TrustedByModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioStateImpl implements _PortfolioState {
  _$PortfolioStateImpl(
      {final List<PortfolioModel> portfolioList = const <PortfolioModel>[],
      this.githubProfile,
      final List<TrustedByModel> trustedBy = const <TrustedByModel>[],
      this.isLoading = false})
      : _portfolioList = portfolioList,
        _trustedBy = trustedBy;

  factory _$PortfolioStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioStateImplFromJson(json);

  final List<PortfolioModel> _portfolioList;
  @override
  @JsonKey()
  List<PortfolioModel> get portfolioList {
    if (_portfolioList is EqualUnmodifiableListView) return _portfolioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_portfolioList);
  }

  @override
  final GitHubProfileModel? githubProfile;
  final List<TrustedByModel> _trustedBy;
  @override
  @JsonKey()
  List<TrustedByModel> get trustedBy {
    if (_trustedBy is EqualUnmodifiableListView) return _trustedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trustedBy);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'PortfolioState(portfolioList: $portfolioList, githubProfile: $githubProfile, trustedBy: $trustedBy, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioStateImpl &&
            const DeepCollectionEquality()
                .equals(other._portfolioList, _portfolioList) &&
            (identical(other.githubProfile, githubProfile) ||
                other.githubProfile == githubProfile) &&
            const DeepCollectionEquality()
                .equals(other._trustedBy, _trustedBy) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_portfolioList),
      githubProfile,
      const DeepCollectionEquality().hash(_trustedBy),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioStateImplCopyWith<_$PortfolioStateImpl> get copyWith =>
      __$$PortfolioStateImplCopyWithImpl<_$PortfolioStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioStateImplToJson(
      this,
    );
  }
}

abstract class _PortfolioState implements PortfolioState {
  factory _PortfolioState(
      {final List<PortfolioModel> portfolioList,
      final GitHubProfileModel? githubProfile,
      final List<TrustedByModel> trustedBy,
      final bool isLoading}) = _$PortfolioStateImpl;

  factory _PortfolioState.fromJson(Map<String, dynamic> json) =
      _$PortfolioStateImpl.fromJson;

  @override
  List<PortfolioModel> get portfolioList;
  @override
  GitHubProfileModel? get githubProfile;
  @override
  List<TrustedByModel> get trustedBy;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioStateImplCopyWith<_$PortfolioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
