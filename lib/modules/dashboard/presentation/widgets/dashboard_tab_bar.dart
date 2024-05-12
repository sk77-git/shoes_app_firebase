import 'package:flutter/material.dart';
import 'package:shoe_shop_firebase/core/constants/app_colors.dart';
import 'package:shoe_shop_firebase/core/theme/text_styles.dart';

class DashboardTabBar extends StatelessWidget {
  const DashboardTabBar({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        splashBorderRadius: BorderRadius.circular(4),
        controller: tabController,
        indicator: const BoxDecoration(),
        isScrollable: true,
        dividerHeight: 0,
        labelStyle: TextStyles.headLine600,
        unselectedLabelStyle:
            TextStyles.headLine600.copyWith(color: AppColors.primaryNeutral300),
        tabs: const [
          Tab(text: 'All'),
          Tab(text: 'Nike'),
          Tab(text: 'Jordan'),
          Tab(text: 'Adidas'),
          Tab(text: 'Rebook'),
          Tab(text: 'Puma'),
        ],
      ),
    );
  }
}
