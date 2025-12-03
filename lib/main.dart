import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const SwiftCarApp());
}

class SwiftCarApp extends StatelessWidget {
  const SwiftCarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwiftCar',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: AppRoutes.onboarding,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
