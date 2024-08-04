import 'package:flutter/material.dart';
import 'package:flutter_application_web_assignment/custom_scaffold.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Column(
      children: [
        Text(
          'Welcome, We’re thrilled to have you here. Dive in and explore the amazing features we’ve built just for you.',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 50),
        const Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              CustomContainer(),
              CustomContainer(),
              CustomContainer(),
              CustomContainer(),
            ])
      ],
    ));
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: const BoxDecoration(
        color: Colors.blue,
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.black),
          left: BorderSide(width: 1.0, color: Colors.black),
          right: BorderSide(width: 1.0, color: Colors.black),
          bottom: BorderSide(width: 1.0, color: Colors.black),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'QR Code Generator',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
