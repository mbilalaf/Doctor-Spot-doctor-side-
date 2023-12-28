import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardButtonWidget extends StatelessWidget {
  final String name;
  final bool border;
  const CardButtonWidget({
    super.key,
    required this.name,
    this.border = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: border == false ? MyColors.primaryBlue : MyColors.white,
        border:
            border == false ? null : Border.all(color: MyColors.primaryBlue),
      ),
      child: Center(
        child: Text(
          name,
          style: GoogleFonts.poppins(
            fontSize: 8,
            fontWeight: FontWeight.w400,
            color: border == false ? MyColors.white : MyColors.primaryBlue,
          ),
        ),
      ),
    );
  }
}
