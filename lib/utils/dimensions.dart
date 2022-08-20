import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.67;
  static double pageViewController = screenHeight / 3.89;
  static double pageViewTextController = screenHeight / 7.13;

  //Dynamic Height for padding and margin
  static double height10 = screenHeight / 85.6;
  static double height15 = screenHeight / 57.11;
  static double height20 = screenHeight / 42.8;
  static double height30 = screenHeight / 28.5;
  static double height45 = screenHeight / 19.03;
  static double height120 = screenHeight / 7.13;

  //Dynamic Width for padding and margin
  static double width10 = screenHeight / 85.6;
  static double width15 = screenHeight / 57.11;
  static double width20 = screenHeight / 42.8;
  static double width30 = screenHeight / 28.5;
  static double width45 = screenHeight / 19.03;

  //Font Size
  static double font16 = screenHeight / 53.54;
  static double font20 = screenHeight / 42.8;
  static double font26 = screenHeight / 32.9;

  //Icons
  static double icon24 = screenHeight / 35.6;
  static double icon15 = screenHeight / 57.1;
  static double icon16 = screenHeight / 53.5;


  //Radius
  static double radius15 = screenHeight / 57.1;
  static double radius20 = screenHeight / 42.8;
  static double radius30 = screenHeight / 28.5;

  //ListView Size
  static double listViewImgSize = screenWidth / 3.92;
  static double listViewTextContSize = screenWidth / 3.92;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.44;


}
