import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTimeButtonWidget extends StatelessWidget {
  final String img;
  final String text;
  const DateTimeButtonWidget({
    super.key,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: MyColors.darkBlue.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: Image(
                image: AssetImage(
                  img,
                ),
              ),
            ),
            const SizedBox(width: 3),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 8,
                fontWeight: FontWeight.w600,
                color: MyColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
