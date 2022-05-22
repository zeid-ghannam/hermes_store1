import 'package:get/get.dart';

//this class for put dynamic dimensions for all widget
// to work in all kind of devices even if it small or big
class Dimensions {
  //this for get the height and width of the device using the get package
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //dynamic container size height
  static double pageViewMainContainer320 = screenHeight / 2.5;
  static double pageViewMainContainer290 = screenHeight / 2.69;
  static double pageViewContainer240 = screenHeight / 3.25;
  static double containerHeight120 = screenHeight / 6.5;
  static double containerHeight80 = screenHeight / 9.76;
  static double containerHeight70 = screenHeight / 11.38;
  static double containerHeight20 = screenHeight / 39.85;
  static double containerHeight155 = screenHeight / 5;
  static double containerHeight200 = screenHeight / 3.985;
  //width container
  static double containerWidth280 = screenWidth / 1.4;
  static double containerWidth200 = screenWidth / 1.96;
  static double containerWidth155 = screenWidth / 2.53;
  static double containerWidth70 = screenWidth / 5.61;
  static double containerWidth60 = screenWidth / 6.54;

  //publisher image container height
  static double publisherMainContainer380 = screenHeight / 2.05;
  static double publisherHeightContainer = screenHeight / 3.9;

  //publisher image container width
  static double publisherWidthContainer = screenWidth / 2.8;

  //publisher photo
  static double publisherWidthPhoto = screenWidth / 5.6;
  static double publisherHeightPhoto = screenHeight / 8;

  //book image container height
  static double bookHeightContainer = screenHeight / 5;
  static double bookDetailHeightContainer = screenHeight / 3.985;

  //book image container width
  static double bookWidthContainer120 = screenHeight / 6.5;
  static double bookWidthContainer92 = screenHeight / 8.84;
  static double bookDetailWidthContainer = screenHeight / 6.05;

  //text item container
  static double textItemContainer = screenWidth / 1.428;

  // dynamic height
  static double height5 = screenHeight / 156.2;
  static double height10 = screenHeight / 78.1;
  static double height15 = screenHeight / 53.1;
  static double height20 = screenHeight / 39.85;
  static double height30 = screenHeight / 26.56;
  static double height40 = screenHeight / 19.92;
  static double height45 = screenHeight / 17.71;
  static double height70 = screenHeight / 11.38;
  static double height100 = screenHeight / 7.81;

  // dynamic width
  static double width5 = screenWidth / 78.54;
  static double width10 = screenWidth / 39.27;
  static double width20 = screenWidth / 19.635;
  static double width170 = screenWidth / 2.31;
  static double width100 = screenWidth / 3.927;

  //radius dynamic size
  static double radius8 = screenHeight / 97.625;
  static double radius15 = screenHeight / 53.13;
  static double radius30 = screenHeight / 26.56;

  //circle avatar size in intro screen and welcome screen
  static double radius70 = screenHeight / 11.38;

  // Icon dynamic size
  static double iconSize20 = screenHeight / 39.05;
  static double iconSize24 = screenHeight / 33.2;
  static double iconSize28 = screenHeight / 28.46;
  static double iconSize30 = screenHeight / 26.56;
  static double iconSize100 = screenHeight / 7.81;
  static double notificationIconSize = screenHeight / 30;
  static double searchIconSize = screenHeight / 24;

  //bottom height
  static double bottomHeightBar = screenHeight / 6.64;

  // button dimensions width
  static double buttonWidthContainer320 = screenWidth / 1.22;
  static double buttonWidthContainer200 = screenWidth / 1.96;
  static double buttonWidthContainer240 = screenWidth / 1.63;
  static double buttonWidthContainer120 = screenWidth / 3.2725;

  // button dimensions height
  static double buttonHeightContainer90 = screenHeight / 8.67;
  static double buttonHeightContainer70 = screenHeight / 10.41;
  static double buttonHeightContainer60 = screenHeight / 14.51;
  static double buttonHeightContainer50 = screenHeight / 15.62;
  static double buttonHeightContainer30 = screenHeight / 26;

  // text field container
  static double containerTextFieldHeight48 = screenHeight / 16.27;
}
