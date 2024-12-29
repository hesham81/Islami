import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';

class HadethPage extends StatelessWidget {
  static const routeName = "Hadeth";

  const HadethPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.hadethBG))),
    );
  }
}
