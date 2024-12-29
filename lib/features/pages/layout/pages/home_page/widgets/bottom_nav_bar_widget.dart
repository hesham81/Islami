import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';

class BottomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final int navBarItem;

  final String iconPath;

  const BottomNavBarWidget({
    super.key,
    required this.selectedIndex,
    required this.navBarItem,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: selectedIndex == navBarItem
            ? AppColors.secondaryColor.withOpacity(0.5)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(66),
      ),
      child: ImageIcon(
        AssetImage(iconPath),
      ),
    );
  }
}
