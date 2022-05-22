import 'package:flutter/material.dart';
import 'package:hermes_store/screens/my_library/my_favorite_books.dart';
import 'package:hermes_store/screens/my_library/my_library_body.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';

import '../../shared/widgets/app_bar_section.dart';

class MyLibrary extends StatefulWidget {
  const MyLibrary({Key? key}) : super(key: key);

  @override
  State<MyLibrary> createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Column(
      children: [
        SizedBox(
          height: Dimensions.height30,
        ),
        AppBarSection(),
        SizedBox(
          height: Dimensions.height20,
        ),
        TabBar(
          indicatorWeight: 6.0,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: AppColors.activeTextColor,
          unselectedLabelColor: AppColors.unActiveTextColor,
          labelColor: AppColors.activeTextColor,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                'مكتبتي',
                style: TextStyle(
                    fontSize: AppFonts.headingSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                'المفضلة',
                style: TextStyle(
                    fontSize: AppFonts.headingSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.height45,
        ),
        Expanded(
          child: SizedBox(
            height: Dimensions.bookHeightContainer,
            child: TabBarView(
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _tabController,
              children: const [
                MyLibraryBody(),
                MyFavoriteBooks(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
