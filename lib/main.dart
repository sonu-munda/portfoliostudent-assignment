import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfoliostudent/dashboard_screen.dart';
import 'package:portfoliostudent/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
            useMaterial3: true,
            fontFamily: 'Roboto',
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                fontSize: 18.sp,
                color: AppColors.text,
                fontWeight: FontWeight.w400,
              ),
            )),
        themeMode: ThemeMode.light,
        routes: {
          '/': (context) => const DashboardScreen(),
        },
      ),
    );
  }
}
