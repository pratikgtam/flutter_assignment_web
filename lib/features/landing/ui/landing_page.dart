import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/features/landing/models/landing_page_items.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';
import 'package:pratik_portfolio/shared/bottom_nav_bar.dart';
import 'package:pratik_portfolio/shared/constatnts.dart';

// This is the landing page that will be displayed when the user opens the app
class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.currentItem});
  final LandingPageItems currentItem;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    context.read<LandingCubit>().changePage(widget.currentItem.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: Row(
        children: [
          const AppNavigationRail(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: widget.currentItem.page,
          )),

          // body,
        ],
      ),
    );
  }
}
