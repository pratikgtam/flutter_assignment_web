import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pratik_portfolio/features/landing/models/landing_page_items.dart';
import 'package:pratik_portfolio/features/landing/ui/landing_page.dart';

part 'app_router.g.dart';
part 'app_routes.dart';

// We are using GoRouter for navigation in this app
class AppRouter {
  AppRouter._()
      : _router = GoRouter(
          routes: $appRoutes,
          initialLocation: '/',
          debugLogDiagnostics: true,
        );

  static final instance = AppRouter._();

  final GoRouter _router;

  GoRouter get router => _router;
}
