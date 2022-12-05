import 'package:aku_tau_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AkuTauApp());
}

class AkuTauApp extends StatelessWidget {
  const AkuTauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
