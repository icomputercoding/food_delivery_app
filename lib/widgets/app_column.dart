import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SizedBox(
          height: Dimensions.height20,
        ),
        //Comment Section
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    color: Colors.blue,
                    size: Dimensions.icon15,
                  )),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '4.5'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '257'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: 'comments')
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        //Time and Distance
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  const [
            IconText(
                iconData: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconText(
                iconData: Icons.location_on,
                text: "1.7KM",
                iconColor: Colors.blue),
            IconText(
                iconData: Icons.access_time_rounded,
                text: "32min",
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
