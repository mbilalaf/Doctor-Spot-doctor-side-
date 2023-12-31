import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: MyColors.primaryBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: MyFontStyle.titleText.copyWith(
              color: MyColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
