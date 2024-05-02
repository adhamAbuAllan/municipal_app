import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:municipal_app/controller/bottom_nav_bar_controller.dart';
import 'package:municipal_app/core/widgets/bottom_nav_bar.dart';
import 'package:municipal_app/features/screens/dashboard_screen.dart';
import 'package:municipal_app/features/screens/home_screen.dart';
import 'package:municipal_app/features/screens/more_screen.dart';
import 'package:municipal_app/features/screens/news_screen.dart';
import 'package:municipal_app/features/screens/services_screen.dart';

// import 'core/colors.dart';

void main() {
  Get.put(BottomNavBarController());
  runApp( GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Noto_Sans_Arabic'
      ),
      localizationsDelegates: const [
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ], supportedLocales: const [
    Locale("en", "US"),
    Locale("ar", "SA"), // OR Locale('ar', 'AE') OR Other RTL locales
  ], locale: const Locale("ar", "SA"), home: const Home()));
}

class Home extends StatefulWidget {
  const Home({super.key, this.controller});
  final int ? controller;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BottomNavBarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<BottomNavBarController>(
        
          builder: (context) {
            return IndexedStack(
              index: controller.index,
              children: const [
                MoreScreen(),
                NewsScreen(),
                ServicesScreen(),
                DashboardScreen(),
                HomeScreen(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        controller: controller,
      ),
    );
  }
}
