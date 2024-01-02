import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class TipsTextWidget extends StatelessWidget {
  final String title;
  final String description;
  const TipsTextWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: MyFontStyle.mediumText.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          style: MyFontStyle.captionText,
        ),
      ],
    );
  }
}
