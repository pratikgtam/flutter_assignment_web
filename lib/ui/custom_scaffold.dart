import 'package:flutter/material.dart';

// This is a custom scaffold widget which will display the body in the center of the screen
class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
                // This will constrain the width of the body to 1200
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: body,
                )),
          ),
        ),
      ),
    );
  }
}
