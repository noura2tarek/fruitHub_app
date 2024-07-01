import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub_app/core/utils/app_images.dart';
import 'package:fruithub_app/features/on_boarding/view/on_borading_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(Assets.imagesPlant)),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesCircles,
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }

  void executeNavigation() {
    Future.delayed(
      Duration(seconds: 5),
      () => Navigator.pushReplacementNamed(context, OnBoardingView.routeName),
    );
  }
}
