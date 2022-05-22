import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/app_colors.dart';
import '../../../../shared/constants/dimensions.dart';
import '../../../../shared/widgets/app_bar_section.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/secondary_text.dart';
import '../../../../shared/widgets/text_field_widget.dart';
import '../login/login_screen.dart';

class UserRegistrationScreen extends StatelessWidget {
  const UserRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              AppBarSection(
                leftVisible: true,
                rightVisible: false,
              ),
              Container(
                width: Dimensions.screenWidth,
                height: Dimensions.containerHeight155,
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: const AssetImage(
                      'assets/images/book1.jpg',
                    ),
                    radius: Dimensions.height70,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimensions.width20,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: Dimensions.height40,
                    ),
                    const TextFieldWidget(
                      hintText: 'اسم المستخدم',
                      labelText: 'الإسم',
                      icon: Icons.person,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const TextFieldWidget(
                      hintText: 'أدخل الإيميل',
                      labelText: 'إيميل',
                      icon: Icons.email,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const TextFieldWidget(
                      hintText: 'كلمة السر',
                      labelText: 'كلمة السر',
                      icon: Icons.remove_red_eye_rounded,
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    const TextFieldWidget(
                      hintText: 'تأكيد كلمة السر',
                      labelText: 'تأكيد كلمة السر',
                      icon: Icons.remove_red_eye_rounded,
                    ),
                    SizedBox(
                      height: Dimensions.height40,
                    ),
                    SizedBox(
                      width: Dimensions.buttonWidthContainer320,
                      child: CustomButton(
                        onPressed: () {},
                        title: 'إنشاء حساب',
                        colour: AppColors.buttonColor,
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SecondaryText(
                          text: 'لدي حساب؟',
                          color: AppColors.activeTextColor,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(
                              () => LogInScreen(),
                            );
                          },
                          child: SecondaryText(
                              text: 'سجل دخول',
                              color: AppColors.textButtonColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
