import 'package:flutter/material.dart';
import '../screens/onboarding_screen.dart';
import '../screens/login_screen.dart';
import '../screens/home_screen.dart';
import '../screens/car_details_screen.dart';
import '../screens/booking_screen.dart';
import '../models/car.dart';

class AppRoutes {
  static const String onboarding = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String carDetails = '/car-details';
  static const String booking = '/booking';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case carDetails:
        final car = settings.arguments as Car;
        return MaterialPageRoute(builder: (_) => CarDetailsScreen(car: car));
      case booking:
        final car = settings.arguments as Car;
        return MaterialPageRoute(builder: (_) => BookingScreen(car: car));
      default:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    }
  }
}
