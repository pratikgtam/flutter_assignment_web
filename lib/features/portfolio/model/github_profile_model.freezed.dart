// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitHubProfileModel _$GitHubProfileModelFromJson(Map<String, dynamic> json) {
  return _GitHubProfileModel.fromJson(json);
}

/// @nodoc
mixin _$GitHubProfileModel {
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_repos')
  int? get publicRepos => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_gists')
  int? get publicGists => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;
  int? get following => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubProfileModelCopyWith<GitHubProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubProfileModelCopyWith<$Res> {
  factory $GitHubProfileModelCopyWith(
          GitHubProfileModel value, $Res Function(GitHubProfileModel) then) =
      _$GitHubProfileModelCopyWithImpl<$Res, GitHubProfileModel>;
  @useResult
  $Res call(
      {String login,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'html_url') String? htmlUrl,
      String? name,
      String? location,
      String? bio,
      @JsonKey(name: 'public_repos') int? publicRepos,
      @JsonKey(name: 'public_gists') int? publicGists,
      int? followers,
      int? following});
}

/// @nodoc
class _$GitHubProfileModelCopyWithImpl<$Res, $Val extends GitHubProfileModel>
    implements $GitHubProfileModelCopyWith<$Res> {
  _$GitHubProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? publicRepos = freezed,
    Object? publicGists = freezed,
    Object? followers = freezed,
    Object? following = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubProfileModelImplCopyWith<$Res>
    implements $GitHubProfileModelCopyWith<$Res> {
  factory _$$GitHubProfileModelImplCopyWith(_$GitHubProfileModelImpl value,
          $Res Function(_$GitHubProfileModelImpl) then) =
      __$$GitHubProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String login,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'html_url') String? htmlUrl,
      String? name,
      String? location,
      String? bio,
      @JsonKey(name: 'public_repos') int? publicRepos,
      @JsonKey(name: 'public_gists') int? publicGists,
      int? followers,
      int? following});
}

/// @nodoc
class __$$GitHubProfileModelImplCopyWithImpl<$Res>
    extends _$GitHubProfileModelCopyWithImpl<$Res, _$GitHubProfileModelImpl>
    implements _$$GitHubProfileModelImplCopyWith<$Res> {
  __$$GitHubProfileModelImplCopyWithImpl(_$GitHubProfileModelImpl _value,
      $Res Function(_$GitHubProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? avatarUrl = freezed,
    Object? htmlUrl = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? bio = freezed,
    Object? publicRepos = freezed,
    Object? publicGists = freezed,
    Object? followers = freezed,
    Object? following = freezed,
  }) {
    return _then(_$GitHubProfileModelImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlUrl: freezed == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      publicGists: freezed == publicGists
          ? _value.publicGists
          : publicGists // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubProfileModelImpl implements _GitHubProfileModel {
  const _$GitHubProfileModelImpl(
      {required this.login,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      required this.name,
      required this.location,
      required this.bio,
      @JsonKey(name: 'public_repos') required this.publicRepos,
      @JsonKey(name: 'public_gists') required this.publicGists,
      required this.followers,
      required this.following});

  factory _$GitHubProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubProfileModelImplFromJson(json);

  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? bio;
  @override
  @JsonKey(name: 'public_repos')
  final int? publicRepos;
  @override
  @JsonKey(name: 'public_gists')
  final int? publicGists;
  @override
  final int? followers;
  @override
  final int? following;

  @override
  String toString() {
    return 'GitHubProfileModel(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, name: $name, location: $location, bio: $bio, publicRepos: $publicRepos, publicGists: $publicGists, followers: $followers, following: $following)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubProfileModelImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.publicRepos, publicRepos) ||
                other.publicRepos == publicRepos) &&
            (identical(other.publicGists, publicGists) ||
                other.publicGists == publicGists) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl, htmlUrl, name,
      location, bio, publicRepos, publicGists, followers, following);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubProfileModelImplCopyWith<_$GitHubProfileModelImpl> get copyWith =>
      __$$GitHubProfileModelImplCopyWithImpl<_$GitHubProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubProfileModelImplToJson(
      this,
    );
  }
}

abstract class _GitHubProfileModel implements GitHubProfileModel {
  const factory _GitHubProfileModel(
      {required final String login,
      @JsonKey(name: 'avatar_url') required final String? avatarUrl,
      @JsonKey(name: 'html_url') required final String? htmlUrl,
      required final String? name,
      required final String? location,
      required final String? bio,
      @JsonKey(name: 'public_repos') required final int? publicRepos,
      @JsonKey(name: 'public_gists') required final int? publicGists,
      required final int? followers,
      required final int? following}) = _$GitHubProfileModelImpl;

  factory _GitHubProfileModel.fromJson(Map<String, dynamic> json) =
      _$GitHubProfileModelImpl.fromJson;

  @override
  String get login;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  String? get name;
  @override
  String? get location;
  @override
  String? get bio;
  @override
  @JsonKey(name: 'public_repos')
  int? get publicRepos;
  @override
  @JsonKey(name: 'public_gists')
  int? get publicGists;
  @override
  int? get followers;
  @override
  int? get following;
  @override
  @JsonKey(ignore: true)
  _$$GitHubProfileModelImplCopyWith<_$GitHubProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
