import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String image;
  final String name;
  final String time;
  final String comment;
  final bool icon;
  const CommentCard({
    super.key,
    required this.image,
    required this.name,
    required this.time,
    required this.comment,
    this.icon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: MyFontStyle.mediumText.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      time,
                      style: MyFontStyle.smallText.copyWith(
                        color: MyColors.darkGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            icon == true
                ? Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: MyColors.red.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage(
                              'assets/icons/remove.png',
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          comment,
          style: MyFontStyle.normalText.copyWith(
            color: MyColors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
