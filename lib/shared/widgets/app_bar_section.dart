import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/dimensions.dart';

class AppBarSection extends StatelessWidget {
  bool? leftVisible;
  bool? rightVisible;
  AppBarSection({
    Key? key,
    this.leftVisible = false,
    this.rightVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left: Dimensions.width5, right: Dimensions.width10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: rightVisible == true
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: Dimensions.iconSize28,
                    ),
                  )
                : null,
          ),
          Container(
              child: leftVisible == true
                  ? IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        size: Dimensions.iconSize24,
                      ),
                    )
                  : null),
        ],
      ),
    );
  }
}
