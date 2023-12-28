import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PostAnswerTextFieldWidget extends StatelessWidget {
  const PostAnswerTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: MyColors.lightGrey,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          cursorColor: MyColors.primaryBlue,
          maxLines: 10,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Post Your Answer',
            hintStyle: MyFontStyle.normalText.copyWith(
              color: MyColors.darkGrey,
            ),
          ),
        ),
      ),
    );
  }
}
