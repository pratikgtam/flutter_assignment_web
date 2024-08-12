import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/portfolio/cubit/protfolio_cubit.dart';
import 'package:pratik_portfolio/features/portfolio/views/github_profile.dart';
import 'package:pratik_portfolio/features/portfolio/views/trusted_by.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';

// This is the portfolio page that will be displayed when the user opens the portfolio page
class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  void initState() {
    context.read<PortfolioCubit>().fetch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final portfolios = context.watch<PortfolioCubit>().state.portfolioList;
    return Responsiveness(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const GitHubProfileScreen(),
            const TrustedBy(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Projects',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 15),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 400,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
              ),
              itemCount: portfolios.length,
              itemBuilder: (BuildContext context, int index) {
                final portfolio = portfolios[index];
                return Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.network(portfolio.imageUrl),
                      ),
                      Text(portfolio.title),
                      Text(portfolio.description),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
