import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/widgets/custom_button.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';
import '../../shared/constants/dimensions.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: Dimensions.publisherMainContainer380,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: Dimensions.radius70,
                backgroundImage: const AssetImage('assets/images/book1.jpg'),
              ),
            ),
          ),
          SecondaryText(
            text: 'هل تستمتع بقراءة الكتب ؟',
            color: AppColors.activeTextColor,
            size: AppFonts.normalSize,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          SizedBox(
            width: Dimensions.buttonWidthContainer320,
            height: Dimensions.buttonHeightContainer70,
            child: CustomButton(
              onPressed: () {},
              title: 'سجل كقارئ',
              colour: AppColors.buttonColor,
            ),
          ),
          SizedBox(
            height: Dimensions.height40,
          ),
          SecondaryText(
            text: 'هل أنت كاتب مستقل, مترجم أو ناشر ؟',
            color: AppColors.activeTextColor,
            size: AppFonts.normalSize,
          ),
          SizedBox(
            height: Dimensions.height20,
          ),
          SizedBox(
            width: Dimensions.buttonWidthContainer320,
            height: Dimensions.buttonHeightContainer70,
            child: Center(
              child: CustomButton(
                onPressed: () {},
                title: 'انضم إلينا',
                colour: AppColors.buttonColor,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height45,
          ),
          InkWell(
            onTap: (){
            },
            child: SecondaryText(
              text: 'سياسة الخصوصية',
              color: AppColors.textButtonColor,

            ),
          ),
        ],
      ),
    );
  }
}
