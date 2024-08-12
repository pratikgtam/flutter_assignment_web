// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $landingPageRoute,
      $myServicesRoute,
      $portfolioRoute,
      $contactMeRoute,
    ];

RouteBase get $landingPageRoute => GoRouteData.$route(
      path: '/',
      factory: $LandingPageRouteExtension._fromState,
    );

extension $LandingPageRouteExtension on LandingPageRoute {
  static LandingPageRoute _fromState(GoRouterState state) =>
      const LandingPageRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $myServicesRoute => GoRouteData.$route(
      path: '/my-services',
      factory: $MyServicesRouteExtension._fromState,
    );

extension $MyServicesRouteExtension on MyServicesRoute {
  static MyServicesRoute _fromState(GoRouterState state) =>
      const MyServicesRoute();

  String get location => GoRouteData.$location(
        '/my-services',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $portfolioRoute => GoRouteData.$route(
      path: '/portfolio',
      factory: $PortfolioRouteExtension._fromState,
    );

extension $PortfolioRouteExtension on PortfolioRoute {
  static PortfolioRoute _fromState(GoRouterState state) =>
      const PortfolioRoute();

  String get location => GoRouteData.$location(
        '/portfolio',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $contactMeRoute => GoRouteData.$route(
      path: '/contact-me',
      factory: $ContactMeRouteExtension._fromState,
    );

extension $ContactMeRouteExtension on ContactMeRoute {
  static ContactMeRoute _fromState(GoRouterState state) =>
      const ContactMeRoute();

  String get location => GoRouteData.$location(
        '/contact-me',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
