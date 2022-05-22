import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/heading_text.dart';
import 'package:hermes_store/shared/widgets/horizontal_list_view.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../../shared/widgets/app_bar_section.dart';

class PublisherDetails extends StatelessWidget {
  PublisherDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //this section for the publisher photo and name
              SizedBox(
                width: Dimensions.screenWidth,
                height:
                    Dimensions.publisherMainContainer380 + Dimensions.height10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppBarSection(
                      leftVisible: true,
                    ),
                    Container(
                      height: Dimensions.publisherHeightContainer,
                      width: Dimensions.publisherWidthContainer,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/book1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    HeadingText(text: 'اسم الكاتب/ الناشر'),
                    SizedBox(
                      height: Dimensions.width5,
                    ),
                    SecondaryText(text: 'اسم الكاتب(بالغة الأصلية)'),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    SizedBox(
                      width: Dimensions.buttonWidthContainer120,
                      height: Dimensions.buttonHeightContainer60,
                      child: CustomButton(
                        onPressed: () {},
                        title: 'متابعة',
                        colour: AppColors.buttonColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Container(
                margin: EdgeInsets.only(
                    right: Dimensions.width20, left: Dimensions.width20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(text: 'السيرة الذاتية :'),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    SecondaryText(
                      text: 'السينما أحدث الفنون جميعا'
                          ' ، فعمرها يكاد لا يتجاوز السبعين عاما في حين أن الأدب من أقدم الفنون '
                          '، إن لم يكن أقدمها جميعا '
                          '، فلدينا نصوص أدبية يزيد عمرها على الأربعين قرنا ، فضلا عن المحاولات الشفاهية التي سبقتها ولم تصل إلينا'
                          ' . لذلك كانت للأدب تقاليده الفنية الراسخة ، ومقاييسه الجمالية المصطلح عليها'
                          ' ، في حين أن السينما ما زالت تفتقر إلى مثل هذه التقاليد والمقاييس .',
                      textAlign: TextAlign.justify,
                      color: AppColors.activeTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    HeadingText(text: 'إقتباسات :'),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimensions.height10),
                      width: Dimensions.screenWidth,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SecondaryText(
                            text:
                                ' في حين أن السينما ما زالت تفتقر إلى مثل هذه التقاليد والمقاييس. لذلك كانت للأدب تقاليده الفنية الراسخة، ومقاييسه الجمالية المصطلح عليها',
                            textAlign: TextAlign.justify,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          SecondaryText(
                            text: 'اللص و الكلاب',
                            size: AppFonts.normalSize,
                            color: AppColors.activeTextColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Container(
                      padding: EdgeInsets.all(Dimensions.height10),
                      width: Dimensions.screenWidth,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius8)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SecondaryText(
                            text:
                                ' في حين أن السينما ما زالت تفتقر إلى مثل هذه التقاليد والمقاييس. لذلك كانت للأدب تقاليده الفنية الراسخة، ومقاييسه الجمالية المصطلح عليها',
                            textAlign: TextAlign.justify,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            height: Dimensions.height10,
                          ),
                          SecondaryText(
                            text: 'طعم البقدونس',
                            size: AppFonts.normalSize,
                            color: AppColors.activeTextColor,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),

              HorizontalListView(
                text: 'منشورات للكاتب :',
                textButton: '',
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
