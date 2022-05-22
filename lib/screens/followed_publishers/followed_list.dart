import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/custom_button_with_icon.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

class FollowedList extends StatelessWidget {
  const FollowedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            height: Dimensions.containerHeight120,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius8)),
            margin: EdgeInsets.only(
                bottom: Dimensions.height20,
                left: Dimensions.width10,
                right: Dimensions.width10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: Dimensions.width10),
                  height: Dimensions.publisherHeightPhoto,
                  width: Dimensions.publisherWidthPhoto,
                  decoration: BoxDecoration(
                    color: AppColors.unActiveColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius8),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/book1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: Dimensions.width20,
                ),
                Container(
                  width: Dimensions.containerWidth70,
                  child: SecondaryText(
                    text: 'اسم الكاتب',
                  ),
                ),
                SizedBox(width: Dimensions.height70),
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width10),
                  height: Dimensions.buttonHeightContainer30,
                  child: CustomButtonWithIcon(
                    icon: Icons.clear,
                    iconSize: Dimensions.iconSize20,
                    title: 'إلغاء المتابعة',
                    textSize: AppFonts.smallSize,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
