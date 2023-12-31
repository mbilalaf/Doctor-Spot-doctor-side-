import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String name;
  final String detail;
  const InfoWidget({
    super.key,
    required this.name,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: MyFontStyle.normalText.copyWith(
            color: MyColors.darkGrey,
          ),
        ),
        Text(
          detail,
          style: MyFontStyle.normalText.copyWith(
            color: MyColors.darkGrey,
          ),
        ),
      ],
    );
  }
}
