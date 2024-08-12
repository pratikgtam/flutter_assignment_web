import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/portfolio/cubit/protfolio_cubit.dart';
import 'package:url_launcher/url_launcher_string.dart';

// This is the GitHub profile screen that will be displayed when the user clicks on the GitHub profile in the portfolio page

class GitHubProfileScreen extends StatelessWidget {
  const GitHubProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final profile = context.watch<PortfolioCubit>().state.githubProfile;
    if (profile == null) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'GitHub Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(profile.avatarUrl ?? ''),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Text(
                    profile.name ?? profile.login,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Center(
                  child: Text(
                    profile.location ?? 'Toronto, Canada',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Bio:',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  profile.bio ?? 'No bio available',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                Text(
                  'Stats:',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStatCard('Repositories',
                        profile.publicRepos.toString(), context),
                    _buildStatCard(
                        'Gists', profile.publicGists.toString(), context),
                    _buildStatCard(
                        'Followers', profile.followers.toString(), context),
                    _buildStatCard(
                        'Following', profile.following.toString(), context),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      launchUrlString(profile.htmlUrl ?? '');
                    },
                    icon: const Icon(Icons.open_in_browser),
                    label: const Text('View on GitHub'),
                    style: ElevatedButton.styleFrom(
                      textStyle: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String title, String value, BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
