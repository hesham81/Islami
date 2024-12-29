import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';

class RadioPage extends StatelessWidget {
  static const routeName = "Radio";

  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.radioBG))),
    );
  }
}
