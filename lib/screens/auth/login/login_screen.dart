import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';
import 'package:hermes_store/shared/widgets/text_field_widget.dart';

import '../register/forget_password.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Dimensions.pageViewMainContainer320,
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/book1.jpg'),
                  radius: Dimensions.height70,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.width20),
              child: Column(
                children: [
                  SizedBox(
                    height: Dimensions.height40,
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
                  SizedBox(
                    width: Dimensions.buttonWidthContainer320,
                    child: Container(
                      height: Dimensions.buttonHeightContainer60,
                      child: CustomButton(
                        onPressed: () {},
                        title: 'تسجيل الدخول',
                        colour: AppColors.buttonColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height45,
                  ),
                  Row(children: const [
                    Expanded(
                      child: Divider(
                        indent: 20,
                        endIndent: 10,
                        thickness: 3,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      "أو",
                    ),
                    Expanded(
                        child: Divider(
                      indent: 10,
                      endIndent: 20,
                      thickness: 3,
                      color: Colors.red,
                    )),
                  ]),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.to(
                            () => ForgetPassword(),
                          );
                        },
                        child: SecondaryText(
                          text: 'نسيت كلمة السر؟',
                          color: AppColors.textButtonColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SecondaryText(
                        text: 'ليس لدي حساب؟',
                        color: AppColors.activeTextColor,
                      ),
                      TextButton(
                        onPressed: () {
                          // Get.to(
                          //   () => UserRegistrationScreen(),
                          // );
                        },
                        child: SecondaryText(
                            text: 'أنشئ حساب', color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
