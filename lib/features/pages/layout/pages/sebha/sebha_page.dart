import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';

class SebhaPage extends StatelessWidget {
  static const routeName = "Sebha";

  const SebhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.sebhaBG))),
    );
  }
}
