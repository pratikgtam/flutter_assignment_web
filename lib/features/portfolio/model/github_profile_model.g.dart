// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubProfileModelImpl _$$GitHubProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHubProfileModelImpl(
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String?,
      htmlUrl: json['html_url'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      bio: json['bio'] as String?,
      publicRepos: (json['public_repos'] as num?)?.toInt(),
      publicGists: (json['public_gists'] as num?)?.toInt(),
      followers: (json['followers'] as num?)?.toInt(),
      following: (json['following'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GitHubProfileModelImplToJson(
        _$GitHubProfileModelImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'name': instance.name,
      'location': instance.location,
      'bio': instance.bio,
      'public_repos': instance.publicRepos,
      'public_gists': instance.publicGists,
      'followers': instance.followers,
      'following': instance.following,
    };
