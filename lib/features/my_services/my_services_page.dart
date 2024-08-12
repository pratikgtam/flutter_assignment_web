import 'package:flutter/material.dart';
import 'package:pratik_portfolio/generated/assets.gen.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';

// This is the my services page that will be displayed when the user clicks on the 'My Services' button in the navigation rail
class MyServicesPage extends StatelessWidget {
  const MyServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SvgGenImage> svgImages = [
      Assets.firebase,
      Assets.flutter,
      Assets.js,
      Assets.react,
    ];
    return Responsiveness(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '''As a software engineer, We specialize in creating robust, scalable solutions tailored to meet your unique needs. From designing efficient algorithms to developing full-stack applications, I deliver high-quality code that drives innovation and success. I'm always experimenting with various technologies and always learning.''',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: svgImages
                .map(
                  (e) => e.svg(
                    width: 100,
                    height: 100,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
