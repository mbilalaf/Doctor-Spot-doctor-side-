import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.primaryBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          'Post Answer',
          style: MyFontStyle.mediumText.copyWith(
            color: MyColors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
