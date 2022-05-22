import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';

import '../constants/app_colors.dart';
import '../constants/dimensions.dart';

class CustomButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onPressed;
  final double iconSize;
  final double textSize;

  const CustomButtonWithIcon({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPressed,
    this.iconSize = 0,
    this.textSize = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      color: AppColors.buttonColor,
      borderRadius: BorderRadius.circular(Dimensions.radius8),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius8),
        ),
        onPressed: onPressed,
        height: Dimensions.buttonHeightContainer60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SecondaryText(
              text: title,
              size: textSize == 0 ? AppFonts.secondarySize : textSize,
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Icon(
              icon,
              size: iconSize == 0 ? Dimensions.iconSize24 : iconSize,
              color: AppColors.iconButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
