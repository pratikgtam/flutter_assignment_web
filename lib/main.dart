import 'package:flutter/material.dart';
import 'package:pratik_portfolio/navigation/app_router.dart';
import 'package:pratik_portfolio/shared/app_theme.dart';
import 'package:pratik_portfolio/shared/global_providers.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

// Supabase is a service that provides a backend for this app
// We are initializing the supabase client here

  await Supabase.initialize(
    url: 'https://qtozgrifxyvrydlnhnbe.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF0b3pncmlmeHl2cnlkbG5obmJlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI2NTE4MTYsImV4cCI6MjAzODIyNzgxNn0.q-8sv7k7FKexEsxJgPl1OTqv5JVywZdfcRg15jvKwdk',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalProviders(
      child: MaterialApp.router(
        title: 'Gorkhali Developers',
        theme: AppTheme.theme(context),
        routerConfig: AppRouter.instance.router,
      ),
    );
  }
}
