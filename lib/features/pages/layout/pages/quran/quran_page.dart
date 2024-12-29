import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/pages/layout/pages/quran/widget/recent_widget.dart';

class QuranPage extends StatelessWidget {
  static const routeName = "Quran";

  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.quranBG)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.headerOfSplashBG),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                focusColor: AppColors.white,
                hoverColor: AppColors.white,
                filled: true,
                hintText: "Sura Name",
                fillColor: AppColors.secondaryColor.withOpacity(0.5),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.primaryColor)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.primaryColor),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ImageIcon(
                    const AssetImage(AppAssets.quranICN),
                    color: AppColors.primaryColor,
                  ),
                ),
                hintStyle: TextStyle(
                  color: AppColors.titleWhiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
              vertical: 2,
            ),
            child: Text(
              "Most Recently",
              style: TextStyle(
                color: AppColors.titleWhiteColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 155,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => RecentWidget(),
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 8,
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
