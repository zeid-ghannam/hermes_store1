import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hermes_store/screens/followed_publishers/followed_list.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';

class FollowedPublisher extends StatelessWidget {
  const FollowedPublisher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarSection(
              leftVisible: true,
            ),
            SizedBox(
              height: Dimensions.height20,
            ),
            FollowedList()
          ],
        ),
      ),
    );
  }
}
