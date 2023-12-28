import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class ReviewHeaderWidget extends StatelessWidget {
  const ReviewHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                    'assets/icons/full-star.png',
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ronald Richards',
                  style: MyFontStyle.captionText.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '#46838439',
                  style: MyFontStyle.smallText.copyWith(
                    fontWeight: FontWeight.w400,
                    color: MyColors.darkGrey,
                  ),
                ),
                Text(
                  '1 month ago',
                  style: MyFontStyle.smallText.copyWith(
                    fontWeight: FontWeight.w400,
                    color: MyColors.darkGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          height: 25,
          width: 103,
          decoration: BoxDecoration(
            color: MyColors.green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 7, bottom: 7),
                  child: Image(
                    color: MyColors.green,
                    image: AssetImage(
                      'assets/icons/video-call.png',
                    ),
                  ),
                ),
                Text(
                  'Online Consultation',
                  style: MyFontStyle.smallText.copyWith(
                    fontWeight: FontWeight.w400,
                    color: MyColors.green,
                    fontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
