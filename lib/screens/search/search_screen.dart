import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/search_bar.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../../shared/widgets/app_bar_section.dart';
import '../../shared/widgets/book_list.dart';

class SearchScreen extends StatelessWidget {
  final bool result = false;
  String text;
  SearchScreen({
    Key? key,
    this.text = '"ss"',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: result == true
            ? Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppBarSection(),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: Dimensions.width20),
                        child: SearchBar(),
                      ),
                      SizedBox(height: Dimensions.containerHeight200),
                      Icon(
                        Icons.search,
                        size: Dimensions.iconSize100,
                      ),
                      SecondaryText(
                        text: ' لا توجد نتائج مطابقة $text ',
                        size: AppFonts.headingSize,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      SecondaryText(text: 'تأكد من كتابة الاسم بشكل صحيح')
                    ],
                  ),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarSection(),
                  Container(
                    margin: EdgeInsets.all(Dimensions.width20),
                    child: Row(
                      children: [
                        const Flexible(
                          fit: FlexFit.loose,
                          child: SearchBar(),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.list,
                              size: Dimensions.iconSize30,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: Dimensions.width20,
                        bottom: Dimensions.height20,
                        top: Dimensions.height10),
                    child: SecondaryText(
                      text: 'نتائج مطابقة تماما',
                      color: Colors.black,
                      size: AppFonts.headingSize,
                    ),
                  ),
                  BookItemList(
                    physics: 'never',
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: Dimensions.width20,
                        bottom: Dimensions.height10,
                        top: Dimensions.height20),
                    child: SecondaryText(
                      text: 'نتائج متعلقة بالبحث',
                      color: Colors.black,
                      size: AppFonts.headingSize,
                    ),
                  ),
                  BookItemList(
                    physics: 'never',
                  ),
                ],
              ),
      ),
    );
  }
}
