import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pratik_portfolio/features/landing/cubit/landing_cubit.dart';
import 'package:pratik_portfolio/features/portfolio/cubit/protfolio_cubit.dart';
import 'package:pratik_portfolio/features/portfolio/repository/portfolio_repository.dart';
import 'package:pratik_portfolio/shared/supabase/supabase_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// GlobalProviders is a widget that provides all the required providers and blocs to the app
// It is the parent widget of the MaterialApp

class GlobalProviders extends StatelessWidget {
  const GlobalProviders({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SupabaseClient>(
          create: (context) => Supabase.instance.client,
        ),
        RepositoryProvider<Dio>(
          create: (context) => Dio(),
        ),
        RepositoryProvider<SupabaseRepository>(
          create: (context) => SupabaseRepository(context.read()),
        ),
        RepositoryProvider<PortfolioRepository>(
          create: (context) => PortfolioRepository(context.read()),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LandingCubit(),
          ),
          BlocProvider(
            create: (context) => PortfolioCubit(context.read(), context.read()),
          ),
        ],
        child: child,
      ),
    );
  }
}
