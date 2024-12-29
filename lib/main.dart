import 'package:flutter/material.dart';
import 'package:islami/features/pages/splash/splash_screen.dart';

import 'features/pages/layout/pages/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomePage.routeName: (_) => const HomePage(),
      },
    );
  }
}

