import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hermes_store/screens/auth/register/Reset_password.dart';
import 'package:hermes_store/screens/followed_publishers/followed_publisher.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  bool accountType = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarSection(),
            GestureDetector(
              onTap: () {
                Get.to(
                  () => const FollowedPublisher(),
                );
              },
              child: Container(
                margin: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: Dimensions.width10,
                    right: Dimensions.width10),
                padding: EdgeInsets.only(
                    left: Dimensions.width10, right: Dimensions.width10),
                height: Dimensions.containerHeight80,
                width: Dimensions.screenWidth,
                decoration: BoxDecoration(
                  color: AppColors.containerColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SecondaryText(
                      text: 'من أتابع',
                      color: AppColors.activeTextColor,
                      size: AppFonts.normalSize,
                    ),
                    SizedBox(
                      width: Dimensions.width170,
                    ),
                    Container(
                      width: Dimensions.containerWidth60,
                      height: Dimensions.containerHeight20,
                      child: const Center(
                        child: Text(
                          '14',
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius8),
                          color: Colors.red),
                    ),
                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            CustomProfileContainer(
              title: 'معلوماتي',
              onTaped: () {
                print('my information was taped ');
              },
            ),
            Container(
              child: accountType == false
                  ? Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CustomProfileContainer(
                            title: 'كتبي',
                            onTaped: () {
                              print('my book was taped ');
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomProfileContainer(
                            title: 'نشر كتاب',
                            onTaped: () {
                              print('publish book was taped ');
                            },
                          ),
                        ),
                      ],
                    )
                  : CustomProfileContainer(
                      title: 'كتبي',
                      onTaped: () {
                        print('my book was taped ');
                      },
                    ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height10,
                  right: Dimensions.width10,
                  left: Dimensions.width10),
              child: SecondaryText(
                text: 'الحساب',
                size: AppFonts.headingSize,
                color: AppColors.activeTextColor,
              ),
            ),
            CustomProfileContainer(
              title: 'الإشعارات',
              onTaped: () {
                print('my notification was taped ');
              },
            ),
            CustomProfileContainer(
              title: 'تغيير كلمة السر',
              onTaped: () {
                Get.to(ResetPasswordScreen());
              },
            ),
            CustomProfileContainer(
              title: 'طرق الدفع',
              onTaped: () {
                print('ways of pay was taped ');
              },
            ),
            CustomProfileContainer(
              title: 'تسجيل خروج',
              onTaped: () {
                print('log out was taped ');
              },
            ),
            SizedBox(
              height: Dimensions.height20,
            )
          ],
        ),
      ),
    );
  }
}

class CustomProfileContainer extends StatelessWidget {
  final String title;
  final GestureTapCallback? onTaped;
  const CustomProfileContainer({
    Key? key,
    required this.title,
    this.onTaped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: Container(
        margin: EdgeInsets.only(
            top: Dimensions.height10,
            left: Dimensions.width10,
            right: Dimensions.width10),
        padding: EdgeInsets.only(
            left: Dimensions.width10, right: Dimensions.width10),
        height: Dimensions.containerHeight80,
        width: Dimensions.screenWidth,
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(Dimensions.radius8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SecondaryText(
              text: title,
              color: AppColors.activeTextColor,
              size: AppFonts.normalSize,
            ),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
