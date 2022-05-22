import 'package:flutter/material.dart';
import 'package:hermes_store/shared/constants/app_colors.dart';
import 'package:hermes_store/shared/widgets/secondary_text.dart';
import '../../shared/constants/dimensions.dart';
import '../../shared/widgets/custom_button_with_icon.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: Dimensions.pageViewMainContainer320,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: Dimensions.radius70,
                backgroundImage: AssetImage('assets/images/book1.jpg'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(Dimensions.height20),
            child: SecondaryText(
              text: 'السينما أحدث الفنون جميعا'
                  ' ، فعمرها يكاد لا يتجاوز السبعين عاما في حين أن الأدب من أقدم الفنون '
                  '، إن لم يكن أقدمها جميعا '
                  '، فلدينا نصوص أدبية يزيد عمرها على الأربعين قرنا ، فضلا عن المحاولات الشفاهية التي سبقتها ولم تصل إلينا'
                  ' . لذلك كانت للأدب تقاليده الفنية الراسخة ، ومقاييسه الجمالية المصطلح عليها'
                  ' ، في حين أن السينما ما زالت تفتقر إلى مثل هذه التقاليد والمقاييس .',
              textAlign: TextAlign.justify,
              color: AppColors.activeTextColor,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius8)),
            width: Dimensions.buttonWidthContainer320,
            height: Dimensions.buttonHeightContainer60,
            child: CustomButtonWithIcon(
              onPressed: () {},
              icon: Icons.arrow_forward_outlined,
              title: 'إبدأ الرحلة',
            ),
          ),
          SizedBox(
            height: Dimensions.height10,
          )
        ],
      ),
    );
  }
}
