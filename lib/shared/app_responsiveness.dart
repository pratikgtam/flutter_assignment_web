import 'package:flutter/material.dart';

// App responsiveness class
// This class is used to make the app responsive
// It will be used to make the app responsive for mobile, tablet and desktop
// It will also be used to set the font size for different screen sizes

class AppResponsiveness {
  final BuildContext context;
  final double _mobileBreakpoint = 650;
  final double _tabletBreakpoint = 1100;

  AppResponsiveness({required this.context});

  bool isMobile() {
    return MediaQuery.of(context).size.width < _mobileBreakpoint;
  }

  bool isTablet() {
    return MediaQuery.of(context).size.width >= _mobileBreakpoint &&
        MediaQuery.of(context).size.width < _tabletBreakpoint;
  }

  bool isDesktop() {
    return MediaQuery.of(context).size.width >= _tabletBreakpoint;
  }

  double headlineLargeFontSize() {
    const size = 60.0;

    return isDesktop()
        ? size
        : isTablet()
            ? size - 20
            : size - 30;
  }

  double headlineMediumFontSize() {
    const size = 40.0;
    return isDesktop()
        ? size
        : isTablet()
            ? size - 10
            : size - 20;
  }

  double bodyLargeFontSize() {
    const size = 25.0;
    return isDesktop()
        ? size
        : isTablet()
            ? size - 5
            : size - 10;
  }

  double headlineSmallFontSize() {
    const size = 20.0;
    return isDesktop()
        ? size
        : isTablet()
            ? size - 5
            : size - 10;
  }

  double titleLarge() {
    const size = 30.0;
    return isDesktop()
        ? size
        : isTablet()
            ? size - 10
            : size - 20;
  }
}
