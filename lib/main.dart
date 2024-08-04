import 'package:flutter/material.dart';
import 'package:flutter_application_web_assignment/ui/cat_gallery.dart';
import 'package:flutter_application_web_assignment/ui/dad_joke.dart';
import 'package:flutter_application_web_assignment/ui/home.dart';
import 'package:flutter_application_web_assignment/ui/qr_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // We are using named routes to navigate between screens
  // The initial route is set to '/home'
  // The routes are defined in the routes property

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => const Home(),
        '/qr': (context) => const QrGenerator(),
        '/cat-gallery': (context) => const CatGallery(),
        '/dad-joke': (context) => const DadJoke(),
      },
    );
  }
}
