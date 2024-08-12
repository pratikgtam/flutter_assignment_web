import 'package:dio/dio.dart';
import 'package:pratik_portfolio/features/portfolio/model/github_profile_model.dart';

// This is the repository for the portfolio
// It will be used to fetch the portfolio data

class PortfolioRepository {
  final Dio dio;

  PortfolioRepository(this.dio);
  Future<GitHubProfileModel> getGithubRepo() async {
    final response = await dio
        .get<Map<String, dynamic>>('https://api.github.com/users/pratikgtam');

    return GitHubProfileModel.fromJson(response.data ?? {});
  }
}
