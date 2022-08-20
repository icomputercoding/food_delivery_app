import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class IconText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color iconColor;
  const IconText({Key? key,
    required this.iconData,
    required this.text,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,color: iconColor,),
        const SizedBox(width: 10,),
        SmallText(text: text),
      ],
    );
  }
}
