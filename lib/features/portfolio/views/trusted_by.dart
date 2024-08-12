import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/portfolio/cubit/protfolio_cubit.dart';
import 'package:url_launcher/url_launcher_string.dart';

// This is the trusted by section in the portfolio page

class TrustedBy extends StatelessWidget {
  const TrustedBy({super.key});

  @override
  Widget build(BuildContext context) {
    final trustedBy = context.watch<PortfolioCubit>().state.trustedBy;
    if (trustedBy.isEmpty) {
      return const SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          'Trusted By',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 15),
        Wrap(
            spacing: 10,
            runSpacing: 10,
            children: trustedBy
                .map(
                  (index) => InkWell(
                    onTap: () {
                      launchUrlString(index.websiteUrl);
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          index.logo,
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                )
                .toList()),
      ],
    );
  }
}
