import 'package:flutter/material.dart';
import 'package:fruithub_app/features/on_boarding/view/on_borading_view.dart';
import 'package:fruithub_app/features/splash/view/splah_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        builder: (context) => SplashView(),
      );
     case OnBoardingView.routeName:
      return MaterialPageRoute(
        builder: (context) => OnBoardingView(),
      );
    default:
      return undefinedRoute(settings);
  }
}

Route<dynamic>? undefinedRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: (context) => Scaffold(
      appBar: AppBar(
        title: Text('no route found'),
      ),
      body: Center(
        child: Text('no route found'),
      ),
    ),
  );
}

// class RoutesNames {
//   static const String splashRoute = "/splash";
// }
