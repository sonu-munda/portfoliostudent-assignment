import 'package:flutter/material.dart';
import 'package:portfoliostudent/components/achievement_tab.dart';
import 'package:portfoliostudent/components/project_tab.dart';
import 'package:portfoliostudent/components/saved_tab.dart';
import 'package:portfoliostudent/components/shared_tab.dart';
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
          bottom: const TabBar(
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
            tabs: [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievment'),
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
