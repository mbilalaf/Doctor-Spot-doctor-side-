import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtonWidget extends StatelessWidget {
  final String btnText;

  final bool border;
  const MyButtonWidget({
    super.key,
    required this.btnText,
    this.border = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: border ? MyColors.primaryBlue : MyColors.white,
        border: border ? Border.all(color: MyColors.white) : null,
      ),
      child: Center(
        child: Text(
          btnText,
          style: GoogleFonts.poppins(
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: border ? MyColors.white : MyColors.primaryBlue,
          ),
        ),
      ),
    );
  }
}
