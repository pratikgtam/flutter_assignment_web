import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_profile_model.freezed.dart';
part 'github_profile_model.g.dart';

// This is the model for the GitHub profile
// It will be used to store the GitHub profile data
@freezed
class GitHubProfileModel with _$GitHubProfileModel {
  const factory GitHubProfileModel({
    required String login,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'html_url') required String? htmlUrl,
    required String? name,
    required String? location,
    required String? bio,
    @JsonKey(name: 'public_repos') required int? publicRepos,
    @JsonKey(name: 'public_gists') required int? publicGists,
    required int? followers,
    required int? following,
  }) = _GitHubProfileModel;

  factory GitHubProfileModel.fromJson(Map<String, dynamic> json) =>
      _$GitHubProfileModelFromJson(json);
}
