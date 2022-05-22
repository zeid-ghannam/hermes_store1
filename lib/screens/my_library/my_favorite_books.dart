import 'package:flutter/material.dart';
import 'package:hermes_store/shared/widgets/book_list.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/app_fonts.dart';
import '../../shared/constants/dimensions.dart';
import '../../shared/widgets/heading_text.dart';

class MyFavoriteBooks extends StatefulWidget {
  const MyFavoriteBooks({Key? key}) : super(key: key);

  @override
  State<MyFavoriteBooks> createState() => _MyFavoriteBooksState();
}

class _MyFavoriteBooksState extends State<MyFavoriteBooks> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //this is the header section that shown the text widget
        Container(
          margin: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
            bottom: Dimensions.height20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //this is the heading title text
              //show all content
              HeadingText(
                text: 'كتب أحببتها',
                size: AppFonts.sectionHeadingSize,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'مسح المفضلة',
                  style: TextStyle(
                    color: AppColors.secondaryTextColor,
                    fontSize: AppFonts.normalSize,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    // fontFamily: FontFamily.contentFont,
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          child: BookItemList(),
        ),
      ],
    );
  }
}
