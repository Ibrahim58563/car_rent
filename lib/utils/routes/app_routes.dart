import 'package:car_rent/res/strings.dart';
import 'package:car_rent/view/car_details/screens/car_details_screen.dart';
import 'package:car_rent/view/home/screens/details_screen.dart';
import 'package:car_rent/view/on_boarding/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const SplashScreen(),
    AppStrings.home: (context) => const DetailsScreen(),
    AppStrings.car: (context) => const CarDetailsScreen(),
  };
}
