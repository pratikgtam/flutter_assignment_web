import 'package:bloc/bloc.dart';
import 'package:pratik_portfolio/features/portfolio/repository/portfolio_repository.dart';
import 'package:pratik_portfolio/shared/supabase/supabase_repository.dart';

import 'protfolio_state.dart';

// This is the cubit for the portfolio page
// It will handle the state of the portfolio page
class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this.supabaseRepository, this.portfolioRepository)
      : super(PortfolioState());
  final SupabaseRepository supabaseRepository;
  final PortfolioRepository portfolioRepository;
  // This method will fetch the portfolio, github profile, and trusted clients
  // We call this method when the user opens the portfolio page
  Future<void> fetch() async {
    _fetchPortfolio();
    _fetchGitHubProfile();
    _fetchTrustedClients();
  }

  Future<void> _fetchPortfolio() async {
    try {
      final currentList = state.portfolioList;
      if (currentList.isNotEmpty) {
        emit(state.copyWith(isLoading: false));
        return;
      } else {
        emit(state.copyWith(isLoading: true));
        final portfolio = await supabaseRepository.getPortfolio();
        emit(state.copyWith(
          portfolioList: portfolio,
          isLoading: false,
        ));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _fetchGitHubProfile() async {
    try {
      final profile = await portfolioRepository.getGithubRepo();
      emit(state.copyWith(githubProfile: profile));
    } catch (e) {
      emit(state);
    }
  }

  Future<void> _fetchTrustedClients() async {
    try {
      final trustedClients = await supabaseRepository.getTrustedClients();
      emit(state.copyWith(trustedBy: trustedClients));
    } catch (e) {
      emit(state);
    }
  }
}
