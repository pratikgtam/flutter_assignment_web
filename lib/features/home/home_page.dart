import 'package:flutter/material.dart';
import 'package:pratik_portfolio/generated/assets.gen.dart';
import 'package:pratik_portfolio/navigation/app_router.dart';
import 'package:pratik_portfolio/shared/app_button.dart';
import 'package:pratik_portfolio/shared/app_navigation_rail.dart';

// This is the home page that will be displayed when the user opens the app
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - kBottomNavigationBarHeight,
      child: Responsiveness(
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HEY THERE!',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'We are ',
                      style: Theme.of(context).textTheme.headlineMedium,
                      children: [
                        TextSpan(
                          text: 'Gorkhali Developers'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '''If you are seeking a top-rated freelancer with a proven track record of success, look no further. Let's embark on a journey together, where your vision becomes a reality. Get in touch with me today, and let's bring your projects to new heights!''',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  // This is the button that will navigate to the contact us page
                  const SizedBox(height: 20),
                  AppButton(
                    text: 'Get started now',
                    onPressed: () {
                      // This will navigate to the contact us page
                      const ContactMeRoute().go(context);
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                Assets.homePageImage.path,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
