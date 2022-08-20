import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText(
      {Key? key,
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis,
      this.color = const Color(0XFF332d2b)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
          color: color,
          overflow: overflow,
          fontFamily: 'Poppins',
          fontSize: Dimensions.font20,
          fontWeight: FontWeight.w400),
    );
  }
}
