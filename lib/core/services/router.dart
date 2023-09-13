import 'package:flutter/material.dart';
import 'package:tdd_courses_app/core/common/views/page_under_construction.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case OnBoardingScreen.routeName:
    //   return _pageBuilder(
    //     (_) => const OnBoardingScreen(),
    //     settings: settings,
    //   );
    default:
      return _pageBuilder(
        (_) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext context) page, {
  required RouteSettings settings,
}) =>
    PageRouteBuilder<dynamic>(
      pageBuilder: (context, _, __) => page(context),
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      settings: settings,
    );
