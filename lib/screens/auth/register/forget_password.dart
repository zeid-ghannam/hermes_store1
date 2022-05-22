import 'package:flutter/material.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';

import '../../../../shared/constants/app_colors.dart';
import '../../../../shared/constants/dimensions.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/text_field_widget.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            AppBarSection(
              leftVisible: true,
              rightVisible: false,
            ),
            Container(
              width: double.maxFinite,
              height: Dimensions.pageViewMainContainer320,
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
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
                    height: Dimensions.height70,
                  ),
                  const TextFieldWidget(
                    hintText: 'name@example.com',
                    labelText: 'إيميل',
                    icon: Icons.email,
                  ),
                  SizedBox(
                    height: Dimensions.height40,
                  ),
                  SizedBox(
                    width: Dimensions.buttonWidthContainer320,
                    child: CustomButton(
                      onPressed: () {},
                      title: 'إرسال',
                      colour: AppColors.buttonColor,
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
