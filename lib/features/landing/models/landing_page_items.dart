import 'package:flutter/material.dart';
import 'package:pratik_portfolio/features/contact_us/contact_us_page.dart';
import 'package:pratik_portfolio/features/home/home_page.dart';
import 'package:pratik_portfolio/features/my_services/my_services_page.dart';
import 'package:pratik_portfolio/features/portfolio/views/portfolio_page.dart';

// Landing page items. It contains the title, page, icon, and selected icon
enum LandingPageItems {
  home(
    title: "Home",
    page: HomePage(),
    icon: Icon(Icons.home_outlined),
    selectedIcon: Icon(Icons.home),
  ),
  portfolio(
    title: "Portfolio",
    page: PortfolioPage(),
    icon: Icon(Icons.work_outline),
    selectedIcon: Icon(Icons.work),
  ),
  myServices(
    title: "My Services",
    page: MyServicesPage(),
    icon: Icon(Icons.work_outline),
    selectedIcon: Icon(Icons.work),
  ),
  contactMe(
    title: "Contact Me",
    page: ContactUsPage(),
    icon: Icon(Icons.contact_page_outlined),
    selectedIcon: Icon(Icons.contact_page),
  );

  final String title;
  final Widget page;
  final Icon icon;
  final Icon selectedIcon;

  const LandingPageItems({
    required this.title,
    required this.page,
    required this.icon,
    required this.selectedIcon,
  });

  Text get label => Text(title);
}
