import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfoliostudent/screens/home_page.dart';
import 'package:portfoliostudent/screens/input_page.dart';
import 'package:portfoliostudent/screens/portfolio_page.dart';
import 'package:portfoliostudent/screens/profile_page.dart';
import 'package:portfoliostudent/utils/assets.dart';
import 'package:portfoliostudent/utils/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentBottomNavIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _tabs = [
    const HomePage(),
    const PortfolioPage(),
    const InputPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onBottomNavTabTap(int index) {
    setState(() {
      currentBottomNavIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _tabs,
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.inactive,
            currentIndex: currentBottomNavIndex,
            onTap: onBottomNavTabTap,
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AssetIcons.home,
                    colorFilter: ColorFilter.mode(currentBottomNavIndex == 0 ? AppColors.primary : AppColors.inactive, BlendMode.srcIn),
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AssetIcons.portfolio,
                    colorFilter: ColorFilter.mode(currentBottomNavIndex == 1 ? AppColors.primary : AppColors.inactive, BlendMode.srcIn),
                  ),
                  label: 'Portfolio'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AssetIcons.input,
                    colorFilter: ColorFilter.mode(currentBottomNavIndex == 2 ? AppColors.primary : AppColors.inactive, BlendMode.srcIn),
                  ),
                  label: 'Input'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AssetIcons.profile,
                    colorFilter: ColorFilter.mode(currentBottomNavIndex == 3 ? AppColors.primary : AppColors.inactive, BlendMode.srcIn),
                  ),
                  label: 'Profile'),
            ]),
      ),
    );
  }
}
