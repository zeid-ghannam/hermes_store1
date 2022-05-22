import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_fonts.dart';

import '../constants/app_colors.dart';
import '../constants/dimensions.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
            top: Dimensions.height10, bottom: Dimensions.width5),
        hintTextDirection: TextDirection.rtl,
        hintText: 'بحث',
        hintStyle: TextStyle(
            fontSize: AppFonts.headingSize, color: AppColors.hintColor),
        prefixIcon: Icon(
          Icons.search,
          color: AppColors.hintColor,
          size: Dimensions.searchIconSize,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius8),
          ),
        ),
        //this is for the enable border
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.searchBarBorderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius8),
          ),
        ),
        //this is for the focused border
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: AppColors.searchBarBorderColor, width: 1.5),
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.radius8),
          ),
        ),
      ),
    );
  }
}
