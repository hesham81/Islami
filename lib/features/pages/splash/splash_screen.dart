import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami/features/pages/layout/pages/home_page/home_page.dart';

import '../../../core/constants/app_assets.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "Splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, HomePage.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var duration = const Duration(milliseconds: 1750);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage(
              AppAssets.splashBG,
            ),
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topCenter,
              child: FadeInDown(
                duration: duration,
                child: Image.asset(
                  AppAssets.headerOfSplashBG,
                  width: size.width * 0.8,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FadeInDown(
              duration: duration,
              child: Image.asset(
                AppAssets.lamp,
                height: size.height * 0.335,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.3),
            child: FadeInLeft(
              duration: duration,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(AppAssets.splashRightIMG),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ZoomIn(
              duration: duration,
              child: Image.asset(
                AppAssets.splashLogo,
                width: size.width * 0.38,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.3),
            child: Align(
              alignment: Alignment.centerRight,
              child: FadeInRight(
                duration: duration,
                child: Image.asset(
                  AppAssets.splashLeftIMG,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FadeInUp(
                duration: duration,
                child: Image.asset(AppAssets.splashBranding),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
