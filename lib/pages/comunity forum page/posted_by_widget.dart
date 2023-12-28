import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PostedByWidget extends StatelessWidget {
  final String comment;
  final String postedBy;
  const PostedByWidget({
    super.key,
    required this.comment,
    required this.postedBy,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
        color: MyColors.primaryBlue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr.Shaib Picture Balkol image upload ha ',
              style: MyFontStyle.smallText.copyWith(
                color: MyColors.primaryBlue,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Posted By: me',
              style: MyFontStyle.smallText.copyWith(
                color: MyColors.primaryBlue,
                fontSize: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
