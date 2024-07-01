import 'package:flutter/material.dart';
import 'package:fruithub_app/features/splash/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  static const routeName = 'splash'; // no need for / because it is the first route
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashViewBody()),
    );
  }
}
