import 'package:flutter/material.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../constants/app_colors.dart';
import '../constants/dimensions.dart';
import 'heading_text.dart';

class BookItem extends StatelessWidget {
  int i = 0;
  final String bookTitle;
  final String bookImage;
  final String bookAuthor;
  String bookSummary;
  BookItem(
      {Key? key,
      required this.i,
      required this.bookTitle,
      required this.bookImage,
      required this.bookAuthor,
      required this.bookSummary})
      : super(key: key);

  List<dynamic> books = [
    {
      "id": 1,
      "title": "فن الامبالاة",
      "author": "زيد غنام",
      "translator": "المقداد علي",
      "language": "عربي سوري",
      "cover": "assets/images/book1.jpg",
      "number_of_pages": 181,
      "book_category": [
        "رومنسي",
        "أكشن",
        "مغامرة",
        "كوميدي",
        "خيال علمي",
      ],
      "price": 30.04
    },
  ];

  @override
  Widget build(BuildContext context) {
    // print(Dimensions.screenHeight);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius15),
        color: AppColors.bookItemContainerColor,
      ),
      width: Dimensions.screenWidth,
      margin: EdgeInsets.all(Dimensions.width5),
      height: Dimensions.containerHeight155,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // the book cover image
          Container(
            margin: EdgeInsets.only(
                top: Dimensions.height10 + Dimensions.height10 / 4,
                right: Dimensions.width5,
                bottom: Dimensions.height10),
            height: Dimensions.bookHeightContainer / 1.2,
            width: Dimensions.bookWidthContainer120 / 1.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius8),
              image: DecorationImage(
                  image: AssetImage(bookImage), fit: BoxFit.cover),
            ),
          ),
          //book details , book rating , book category
          Container(
            margin: EdgeInsets.only(
                right: Dimensions.width10, top: Dimensions.height20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //the title of the book
                SizedBox(
                  width: Dimensions.textItemContainer,
                  child: HeadingText(text: bookTitle),
                ),
                SizedBox(
                  height: Dimensions.height10 / 3,
                ),
                //the name of the author
                SecondaryText(
                  text: bookAuthor,
                  color: AppColors.unActiveColor,
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                //the book rating
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColors.iconInactivateColor,
                          size: Dimensions.height20,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: Dimensions.height15,
                ),
                //book text details
                Container(
                    width: Dimensions.textItemContainer,
                    padding: EdgeInsets.only(
                      left: Dimensions.width5,
                    ),
                    child: SecondaryText(
                        maxLine: 2,
                        color: Colors.black45,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        text: bookSummary)),
                SizedBox(
                  height: Dimensions.height10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
