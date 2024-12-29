import 'package:flutter/material.dart';

import '../../../../../core/constants/app_assets.dart';

class TimesPage extends StatelessWidget {
  static const routeName = "Times";

  const TimesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.timesBG))),
    );
  }
}
