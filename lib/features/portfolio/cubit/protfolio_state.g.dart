// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protfolio_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PortfolioStateImpl _$$PortfolioStateImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioStateImpl(
      portfolioList: (json['portfolioList'] as List<dynamic>?)
              ?.map((e) => PortfolioModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PortfolioModel>[],
      githubProfile: json['githubProfile'] == null
          ? null
          : GitHubProfileModel.fromJson(
              json['githubProfile'] as Map<String, dynamic>),
      trustedBy: (json['trustedBy'] as List<dynamic>?)
              ?.map((e) => TrustedByModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TrustedByModel>[],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$PortfolioStateImplToJson(
        _$PortfolioStateImpl instance) =>
    <String, dynamic>{
      'portfolioList': instance.portfolioList,
      'githubProfile': instance.githubProfile,
      'trustedBy': instance.trustedBy,
      'isLoading': instance.isLoading,
    };
