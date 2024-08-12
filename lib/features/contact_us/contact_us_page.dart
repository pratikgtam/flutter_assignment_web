import 'package:flutter/material.dart';
import 'package:pratik_portfolio/shared/app_button.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';
import 'package:url_launcher/url_launcher_string.dart';

// This is the contact us page that will be displayed when the user clicks on the 'Get started now' button
// Also, the contact us page will be displayed when the user clicks on the 'Contact' button in the navigation rail
class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsiveness(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '''Get in touch for a free 30-minute consultation! Whether you're exploring new projects or need expert advice, I'm here to help. Let's discuss how we can turn your ideas into reality.''',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 50),
          AppButton(
            text: 'Book now',
            onPressed: () {
              // This will launch the Calendly link in the browser
              launchUrlString('https://calendly.com/pratikgtam/30min');
            },
          ),
        ],
      ),
    );
  }
}
