import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hermes_store/screens/show_all/show_all.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/heading_text.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../../shared/widgets/horizontal_list_view.dart';
import '../../shared/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var posission = 0.0;
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        posission = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ///this is for the to top section that hold the notifications ...
            Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // notification icon
                  Icon(
                    FontAwesomeIcons.bell,
                    color: AppColors.iconActivateColor,
                    size: Dimensions.notificationIconSize,
                  ),
                  // welcome text
                  Container(
                    margin: EdgeInsets.only(right: Dimensions.width20),
                    child: HeadingText(
                      text: 'صباح الخير , زيد',
                      size: AppFonts.normalSize,
                    ),
                  ),
                ],
              ),
            ),
            //sized box of height = 20
            SizedBox(
              height: Dimensions.height20,
            ),

            ///this section for the search bar in the app
            Container(
              //height: Dimensions.height45,
              padding: EdgeInsets.only(
                  left: Dimensions.height20, right: Dimensions.height20),
              child: const SearchBar(),
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            SizedBox(
              width: Dimensions.buttonWidthContainer320,
              height: Dimensions.buttonHeightContainer60,
              child: CustomButton(
                onPressed: () {},
                title: 'انشر كتاب',
                colour: AppColors.buttonColor,
              ),
            ),
            SizedBox(
              height: Dimensions.height10,
            ),

            ///this section for the body screen
            HorizontalListView(
              text: 'الأكثر رواجاً',
              onTap: () {
                Get.to(
                  () => ShowAll(),
                );
              },
            ),

            //sized box of height = 10
            SizedBox(
              height: Dimensions.height10,
            ),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: Dimensions.containerHeight200,
                      child: PageView.builder(
                        itemCount: 3,
                        controller: pageController,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: Dimensions.width10,
                                vertical: Dimensions.height10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/offer_${index + 1}.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  DotsIndicator(
                    dotsCount: 3,
                    position: posission,
                    decorator: DotsDecorator(
                      activeColor: Colors.red,
                      size: const Size.square(9.0),
                      activeSize: const Size(9.0, 9.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          Dimensions.radius15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // HorizontalListView(
            //   text: 'الأكثر مبيعاً',
            //   onTap: () {},
            // ),

            //sized box of height = 10
            SizedBox(
              height: Dimensions.height10,
            ),
            const PublisherListView(),
            // HorizontalListView(
            //   text: 'المفضلين',
            //   onTap: () {},
            // ),
            SizedBox(
              height: Dimensions.height20,
            )
          ],
        ),
      ),
    );
  }
}

class PublisherListView extends StatelessWidget {
  const PublisherListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.containerWidth155,
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: Dimensions.width100,
                height: Dimensions.width100,
                margin: EdgeInsets.only(
                  right: Dimensions.width10,
                  top: Dimensions.height10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Dimensions.radius70,
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/p1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              SecondaryText(
                text: 'the best publisher',
              )
            ],
          );
        },
      ),
    );
  }
}
