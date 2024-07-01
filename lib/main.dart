import 'package:flutter/material.dart';
import 'package:fruithub_app/core/helper_functions/on_generate_route.dart';
import 'package:fruithub_app/features/splash/view/splah_view.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}


