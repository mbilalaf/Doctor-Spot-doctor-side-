import 'package:doctor_side/pages/comunity%20forum%20page/posted_by_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

import 'image_card_widget.dart';

class PostAnswerWidget extends StatelessWidget {
  const PostAnswerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: MyColors.darkGrey.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 30,
          ),
        ],
        border: Border.all(
          color: MyColors.lightGrey,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Post Answer',
                  style: MyFontStyle.mediumText.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Row(
                  children: [
                    Image(
                      height: 10,
                      image: AssetImage(
                        'assets/icons/edit.png',
                      ),
                    ),
                    SizedBox(width: 20),
                    Image(
                      height: 10,
                      image: AssetImage(
                        'assets/icons/delete.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(
              color: MyColors.lightGrey,
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                ImageCard(image: 'assets/images/post-4.png'),
                SizedBox(width: 6),
                ImageCard(image: 'assets/images/post-5.png'),
                SizedBox(width: 6),
                ImageCard(image: 'assets/images/post-6.png'),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'This is a danger please contact Book Appointment  Me',
              style: MyFontStyle.captionText.copyWith(
                color: MyColors.darkGrey,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                PostedByWidget(
                  comment: 'Dr.Shaib Picture Balkol image upload ha ',
                  postedBy: 'Posted By: me',
                ),
                SizedBox(width: 12),
                Row(
                  children: [
                    Image(
                      height: 10,
                      image: AssetImage(
                        'assets/icons/edit.png',
                      ),
                    ),
                    SizedBox(width: 10),
                    Image(
                      height: 10,
                      image: AssetImage(
                        'assets/icons/delete.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const PostedByWidget(
                      comment:
                          'Dr.Shaib Picture Upload ki hay kindaly check kary',
                      postedBy: 'Posted By: Owner',
                    ),
                    const SizedBox(height: 1),
                    Text(
                      'Reply',
                      style: MyFontStyle.smallText.copyWith(
                        color: MyColors.darkGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
