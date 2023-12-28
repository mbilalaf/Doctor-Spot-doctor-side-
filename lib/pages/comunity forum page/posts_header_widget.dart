import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PostsHeaderWidget extends StatelessWidget {
  const PostsHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: MyColors.primaryBlue,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Image(
              color: MyColors.white,
              image: AssetImage(
                'assets/icons/teeth.png',
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'RCT.tooth pain',
              style: MyFontStyle.captionText.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Asking for someone else, Father, Male, 8 yera old ,',
              style: MyFontStyle.smallText.copyWith(
                fontWeight: FontWeight.w400,
                color: MyColors.darkGrey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
