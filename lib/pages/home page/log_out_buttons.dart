import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class LogOutButtons extends StatelessWidget {
  final String btnText;
  final void Function()? onTap;
  final bool isBorder;
  const LogOutButtons({
    super.key,
    required this.btnText,
    this.onTap,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 43,
        decoration: BoxDecoration(
          color: isBorder ? MyColors.white : MyColors.primaryBlue,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: MyColors.primaryBlue,
          ),
        ),
        child: Center(
          child: Text(
            btnText,
            style: MyFontStyle.mediumText.copyWith(
              color: isBorder ? MyColors.primaryBlue : MyColors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
