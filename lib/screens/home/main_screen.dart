import 'package:flutter/material.dart';
import 'package:hermes_store/screens/cart/cart_screen.dart';
import 'package:hermes_store/screens/home/home_screen.dart';
import 'package:hermes_store/screens/my_library/my_library.dart';
import 'package:hermes_store/screens/profile/profile_screen.dart';
import 'package:hermes_store/screens/search/search_screen.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/dimensions.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List pages = [
    const HomeScreen(),
    const MyLibrary(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimensions.radius30),
          topLeft: Radius.circular(Dimensions.radius30),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.iconActivateColor,
          unselectedItemColor: AppColors.iconInactivateColor,
          iconSize: Dimensions.height30,
          backgroundColor: AppColors.primaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: 'مكتبتي',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'بحث',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'السلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'حسابي',
            ),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
