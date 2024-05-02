import 'package:flutter/material.dart';
import 'package:municipal_app/controller/bottom_nav_bar_controller.dart';
import 'package:municipal_app/core/colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final BottomNavBarController controller;

  const CustomBottomNavigationBar({
    super.key,
    required this.controller,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  String errorMessage = "";

  // late OneApartment apartmentsRes;
  bool isDataLoaded = false; //data load from server

  @override
  void initState() {
    super.initState();
  }

  var index = 0;
  bool isCodeActive = false;

  @override
  Widget build(BuildContext context) {
    var controller = widget.controller;
    return BottomNavigationBar(
      // selectedLabelStyle: const TextStyle(fontFamily: 'IBM'),
      // unselectedLabelStyle: const TextStyle(fontFamily: 'IBM',),

      // selectedIconTheme: const IconThemeData(opacity: 1),
      // unselectedIconTheme: const IconThemeData(opacity: .5),
      // enableFeedback: false,

      // backgroundColor:   themeMode.isDark ? kContainerColorLightMode : kContainerColorDarkMode,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      elevation: 0,
      currentIndex: controller.index,
      onTap: (i) {
        setState(() {
          controller.changeTo(i);
          index = index;
        });
      },
      //items of BottomNavigationBer Widget
      items: const [
        //home item
        BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'المزيد',
            activeIcon: Icon(Icons.menu)),
        BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'الأخبار',
            activeIcon: Icon(Icons.menu_book)),
        //notification item
        BottomNavigationBarItem(
            icon: Icon(
              Icons.folder_outlined,
            ),
            label: 'الخدمات',
            activeIcon: Icon(
              Icons.folder,
            )),
        //orders item
        BottomNavigationBarItem(
          icon: Icon(
            Icons.dashboard_outlined,
          ),
          label: 'لوحة البيانات',
          activeIcon: Icon(Icons.dashboard),
        ),
        //bookmarks item
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.bookmark_outline),
        //   label: 'الحفوظات',activeIcon: Icon(Icons.bookmark)
        // ),
        //account item
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'الرئيسية',
            activeIcon: Icon(Icons.home)),
      ],
    );
  }
}
