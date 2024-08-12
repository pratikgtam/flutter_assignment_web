import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/features/landing/models/landing_page_items.dart';
import 'package:pratik_portfolio/navigation/app_router.dart';
import 'package:pratik_portfolio/shared/app_responsiveness.dart';

// This is the bottom navigation bar that will be displayed when the user opens the app
// This will be displayed only on mobile devices
// On desktop, the user will use the navigation rail
// When the user clicks on the icon, the page will change
class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isMobile = AppResponsiveness(context: context).isMobile();
    if (!isMobile) return const SizedBox();
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex:
          context.select((LandingCubit cubit) => cubit.state.landingPage.index),
      onTap: (value) {
        context.read<LandingCubit>().changePage(value);
        switch (value) {
          case 0:
            const LandingPageRoute().go(context);
            break;
          case 1:
            const PortfolioRoute().go(context);
            break;
          case 2:
            const MyServicesRoute().go(context);
            break;
          case 3:
            const ContactMeRoute().go(context);
            break;
        }
      },
      items: LandingPageItems.values
          .map((e) => BottomNavigationBarItem(
                icon: e.icon,
                label: e.title,
                activeIcon: e.selectedIcon,
                backgroundColor: Colors.white,
              ))
          .toList(),
    );
  }
}
