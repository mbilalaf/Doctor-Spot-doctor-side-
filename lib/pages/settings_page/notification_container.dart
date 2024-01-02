import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class NotificationContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  const NotificationContainer({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.078,
      width: width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: MyColors.darkGrey.withOpacity(0.1),
            offset: const Offset(0, 6),
            blurRadius: 25,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(
                        'assets/icons/volume-high.png',
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: MyFontStyle.titleText,
                    ),
                    Text(
                      subTitle,
                      style: MyFontStyle.captionText.copyWith(
                        color: MyColors.darkGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Change',
              style: MyFontStyle.captionText.copyWith(
                color: MyColors.primaryBlue,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                decorationColor: MyColors.primaryBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
