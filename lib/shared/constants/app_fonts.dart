import 'package:get/get.dart';

class AppFonts {
  //this for get the height and width of the device using the get package
  static double screenHeight= Get.context!.height;
  static double screenWidth= Get.context!.width;

  //dynamic font size
  static double secondarySize= screenHeight/61;
  static double normalSize= screenHeight/53.1;
  static double headingSize= screenHeight/42;
  static double sectionHeadingSize= screenHeight/38;
  static double smallSize= screenHeight/79.7;
}