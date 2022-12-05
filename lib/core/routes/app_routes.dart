import 'package:aku_tau_app/core/routes/app_arguments.dart';
import 'package:aku_tau_app/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

part 'app_pages.dart';

class AppRoutes {
  static get routes => _AppPages.pages;

  static const String home = '/';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _buildRoute(
          settings,
          HomeScreen(arguments: settings.arguments as HomeScreenArguments),
        );
      default:
        return null;
    }
  }

  static MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}
