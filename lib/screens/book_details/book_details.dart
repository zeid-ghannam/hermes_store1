import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/custom_button_with_icon.dart';
import 'package:hermes_store/shared/widgets/tag.dart';

import '../../shared/constants/app_colors.dart';
import '../../shared/widgets/heading_text.dart';
import '../../shared/widgets/secondary_text.dart';

class BookDetails extends StatelessWidget {
  BookDetails({
    Key? key,
  }) : super(key: key);

  List<dynamic> books = [
    {
      "id": Get.arguments[0],
      "title": Get.arguments[1],
      "author": Get.arguments[2],
      "translator": Get.arguments[3],
      "cover": Get.arguments[4],
      "language": Get.arguments[5],
      "number_of_pages": Get.arguments[6],
      "book_category": Get.arguments[7],
      "price": Get.arguments[8],
      "book_house": Get.arguments[9],
    },
  ];
  List<Color> colors = [
    const Color(0xFFff6666),
    const Color(0xFF007f5c),
    const Color(0xFF5f65d3),
    const Color(0xFF60230b),
    const Color(0xFF235314),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      books[0]["cover"],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                  child: Column(
                    children: [
                      AppBarSection(
                        leftVisible: true,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            right: Dimensions.width20,
                            left: Dimensions.width20,
                            top: Dimensions.width20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // this for the book cover image
                            Hero(
                              tag: books[0]['id'],
                              child: Container(
                                height: Dimensions.bookDetailHeightContainer,
                                width: Dimensions.bookDetailWidthContainer,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.radius8),
                                  image: DecorationImage(
                                      image: AssetImage(books[0]["cover"]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: Dimensions.width20,
                            ),
                            //this is details about the book : book name, author name , translator name , book house, book rating , custom button for share the book
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                SizedBox(
                                  width: Dimensions.containerWidth200,
                                  child: HeadingText(
                                    text: books[0]["title"],
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.width5,
                                ),
                                SecondaryText(
                                  text: books[0]["author"],
                                  color: AppColors.unActiveColor,
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                SecondaryText(
                                  text: books[0]["translator"],
                                  color: AppColors.unActiveColor,
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                SecondaryText(
                                  text: books[0]["book_house"],
                                  color: AppColors.unActiveColor,
                                ),
                                SizedBox(
                                  height: Dimensions.height10,
                                ),
                                //rating the book
                                Row(
                                  children: [
                                    Wrap(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: AppColors.iconInactivateColor,
                                          size: Dimensions.height10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //share book with some one
                                Container(
                                  margin:
                                      EdgeInsets.only(top: Dimensions.height10),
                                  height: Dimensions.buttonHeightContainer50,
                                  child: CustomButton(
                                    onPressed: () {},
                                    title: 'مشاركة الكتاب',
                                    colour: AppColors.buttonColor,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      //this for the tag section : book category.
                      Container(
                        margin: EdgeInsets.only(right: Dimensions.height20),
                        width: Dimensions.screenWidth,
                        child: Align(
                          alignment: Alignment.center,
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            children: books[0]['book_category']
                                .map<Widget>(
                                  (item) => tag(
                                    label: item,
                                    color: (colors..shuffle()).first,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ////////////////////
              SizedBox(
                height: Dimensions.height20,
              ),
              //this section for the book detail: the price, pages,book language
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius8),
                  color: AppColors.primaryColor,
                ),
                padding: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                height: Dimensions.containerHeight70,
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SecondaryText(
                          text: 'لغة الكتاب',
                          color: AppColors.activeColor,
                          size: AppFonts.normalSize,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        SecondaryText(
                          text: books[0]['language'],
                          color: AppColors.activeColor,
                          size: AppFonts.normalSize,
                        ),
                      ],
                    ),
                    VerticalDivider(
                      width: Dimensions.width20,
                      indent: Dimensions.height10,
                      endIndent: Dimensions.height10,
                      thickness: Dimensions.width5 / 2.5,
                      color: AppColors.secondaryColor,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SecondaryText(
                          text: 'عدد الصفحات ',
                          color: AppColors.activeColor,
                          size: AppFonts.normalSize,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        SecondaryText(
                          text: books[0]['number_of_pages'].toString(),
                          color: AppColors.activeColor,
                          size: AppFonts.normalSize,
                        ),
                      ],
                    ),
                    VerticalDivider(
                      width: Dimensions.width20,
                      indent: Dimensions.height10,
                      endIndent: Dimensions.height10,
                      thickness: Dimensions.width5 / 2,
                      color: AppColors.secondaryColor,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SecondaryText(
                          text: 'سعر الكتاب',
                          color: AppColors.activeColor,
                          size: AppFonts.normalSize,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        SecondaryText(
                          text: '\$ ${books[0]['price']}',
                          color: AppColors.activeColor,
                          size: AppFonts.normalSize,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              //this is for the book summary
              Container(
                margin: EdgeInsets.only(
                    right: Dimensions.width20, left: Dimensions.width20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                      text: 'ملخص',
                      size: AppFonts.sectionHeadingSize,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SecondaryText(
                      text: 'السينما أحدث الفنون جميعا'
                          ' ، فعمرها يكاد لا يتجاوز السبعين عاما في حين أن الأدب من أقدم الفنون '
                          '، إن لم يكن أقدمها جميعا '
                          '، فلدينا نصوص أدبية يزيد عمرها على الأربعين قرنا ، فضلا عن المحاولات الشفاهية التي سبقتها ولم تصل إلينا'
                          ' . لذلك كانت للأدب تقاليده الفنية الراسخة ، ومقاييسه الجمالية المصطلح عليها'
                          ' ، في حين أن السينما ما زالت تفتقر إلى مثل هذه التقاليد والمقاييس .',
                      color: AppColors.activeColor,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                      size: AppFonts.normalSize,
                      textAlign: TextAlign.justify,
                      // overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    HeadingText(
                      text: 'تفاصيل الكتاب ',
                      size: AppFonts.sectionHeadingSize,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              // this is the place of the book detail like the publisher country , the date of the publishing ,ISBN .....
              Container(
                margin: EdgeInsets.only(right: Dimensions.width20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: Dimensions.bookWidthContainer120,
                            child: HeadingText(text: 'تاريخ النشر :')),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        SecondaryText(
                          text: '5 شباط 2022',
                          color: AppColors.activeColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: Dimensions.bookWidthContainer120,
                            child: HeadingText(text: 'بلد النشر :')),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        SecondaryText(
                          text: 'سوريا',
                          color: AppColors.activeColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: Dimensions.bookWidthContainer120,
                            child: HeadingText(text: ' رقم ISBN :')),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        SecondaryText(
                          text: '51231232022',
                          color: AppColors.activeColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Dimensions.bookWidthContainer120,
                          child: HeadingText(text: 'المترجم :'),
                        ),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        SecondaryText(
                          text: books[0]["translator"],
                          fontWeight: FontWeight.w400,
                          color: AppColors.activeColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Dimensions.bookWidthContainer120,
                          child: HeadingText(text: 'الكاتب :'),
                        ),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/publisher-screen');
                          },
                          child: SecondaryText(
                            text: books[0]["author"],
                            fontWeight: FontWeight.w400,
                            color: AppColors.activeColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Dimensions.bookWidthContainer120,
                          child: HeadingText(text: 'متاح ورقيا :'),
                        ),
                        SizedBox(
                          width: Dimensions.width20,
                        ),
                        SecondaryText(
                          text: 'نعم',
                          fontWeight: FontWeight.w400,
                          color: AppColors.activeColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: Dimensions.width20),
                    width: Dimensions.buttonWidthContainer200,
                    height: Dimensions.buttonHeightContainer60,
                    child: CustomButtonWithIcon(
                      onPressed: () {},
                      title: 'أضف إلى المشتريات',
                      icon: Icons.add,
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.width20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SecondaryText(
                          text: 'أضف إلى المفضلة',
                          color: AppColors.activeColor,
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        const Icon(Icons.favorite_outline),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//book category
