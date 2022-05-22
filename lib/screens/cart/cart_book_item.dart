import 'package:flutter/material.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/constants/dimensions.dart';
import '../../shared/widgets/heading_text.dart';
import '../../shared/widgets/secondary_text.dart';

class CartBookItem extends StatelessWidget {
  final String? name;
  final String? author;
  final double? rating;
  final String? bookSummary;
  final String? image;
  final double? price;

  CartBookItem({
    Key? key,
    this.name,
    this.author,
    this.rating,
    this.bookSummary,
    this.image,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius15),
        color: AppColors.bookItemContainerColor,
      ),
      width: Dimensions.screenWidth,
      margin: EdgeInsets.all(Dimensions.width5),
      height: Dimensions.bookHeightContainer,
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
            height: Dimensions.containerHeight120,
            width: Dimensions.bookWidthContainer92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius8),
              image: const DecorationImage(
                  image: AssetImage('assets/images/book1.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          //book details , book rating
          Container(
            width: Dimensions.containerWidth280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      right: Dimensions.width10, top: Dimensions.height20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //the title of the book
                      SizedBox(
                        width: Dimensions.containerWidth200,
                        child: HeadingText(text: 'bookTitle'),
                      ),
                      SizedBox(
                        height: Dimensions.height10 / 3,
                      ),
                      //the name of the author
                      SizedBox(
                        width: Dimensions.containerWidth200,
                        child: SecondaryText(
                          text: 'bookAuthor',
                          color: AppColors.unActiveColor,
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      //the book rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color: Colors.yellow,
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
                      SizedBox(
                        width: Dimensions.containerWidth200,
                        child: SecondaryText(
                          maxLine: 2,
                          color: Colors.black45,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          text: 'bookSummary',
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                    ],
                  ),
                ),
                //the price of the book
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                        right: Dimensions.width10, top: Dimensions.height30),
                    child: Column(
                      children: [
                        HeadingText(
                          text: '50 ليرة',
                          color: Colors.blue,
                        ),
                        IconButton(
                          onPressed: () {
                            print('object');
                          },
                          icon: Icon(Icons.favorite_outline),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
