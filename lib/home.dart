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
        Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              CustomContainer(
                text: 'QR Code Generator',
                onPressed: () {
                  Navigator.pushNamed(context, '/qr');
                },
              ),
            ])
      ],
    ));
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
