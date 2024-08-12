import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pratik_portfolio/features/portfolio/model/github_profile_model.dart';
import 'package:pratik_portfolio/features/portfolio/model/portfolio_model.dart';
import 'package:pratik_portfolio/features/portfolio/model/trusted_by_model.dart';

part 'protfolio_state.freezed.dart';
part 'protfolio_state.g.dart';

// This is the state for the portfolio page
@freezed
class PortfolioState with _$PortfolioState {
  factory PortfolioState({
    @Default(<PortfolioModel>[]) List<PortfolioModel> portfolioList,
    GitHubProfileModel? githubProfile,
    @Default(<TrustedByModel>[]) List<TrustedByModel> trustedBy,
    @Default(false) bool isLoading,
  }) = _PortfolioState;

  factory PortfolioState.fromJson(Map<String, dynamic> json) =>
      _$PortfolioStateFromJson(json);
}
