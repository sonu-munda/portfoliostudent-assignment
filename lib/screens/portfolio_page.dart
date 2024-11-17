import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoliostudent/components/achievement_tab.dart';
import 'package:portfoliostudent/components/project_tab.dart';
import 'package:portfoliostudent/components/saved_tab.dart';
import 'package:portfoliostudent/components/shared_tab.dart';
import 'package:portfoliostudent/utils/assets.dart';
import 'package:portfoliostudent/utils/colors.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
          actions: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(AssetIcons.cart),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(AssetIcons.notification),
            ),
          ],
          bottom: TabBar(
            dividerColor: AppColors.divider,
            dividerHeight: 2,
            padding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            tabAlignment: TabAlignment.fill,
            indicatorPadding: EdgeInsets.zero,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2,
            indicatorColor: AppColors.primary,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.text,
            labelStyle: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            tabs: [
              const Tab(text: 'Project'),
              const Tab(text: 'Saved'),
              const Tab(text: 'Shared'),
              const Tab(text: 'Achievment'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ProjectTab(),
            SavedTab(),
            SharedTab(),
            AchievementTab(),
          ],
        ),
      ),
    );
  }
}
