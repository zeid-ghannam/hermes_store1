import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/dimensions.dart';
import 'package:hermes_store/shared/widgets/app_bar_section.dart';

class ShowAll extends StatelessWidget {
  const ShowAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppBarSection(leftVisible: true),
            Flexible(
              fit: FlexFit.loose,
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height20,
                  horizontal: Dimensions.width20,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: Dimensions.screenWidth > 450 ? 3 : 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: Dimensions.publisherHeightContainer,
                    mainAxisSpacing: 10),
                itemCount: 30,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(
                      2,
                    ),
                    color: Colors.green,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
