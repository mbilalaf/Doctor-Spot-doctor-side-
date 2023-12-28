import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Welcome',
              style: GoogleFonts.nunito(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: MyColors.darkGrey,
              ),
            ),
            const SizedBox(width: 4),
            const Image(
              height: 12,
              image: AssetImage(
                'assets/icons/star.png',
              ),
            ),
          ],
        ),
        Text(
          'Dr Noor Jamal Khan',
          style: GoogleFonts.nunito(
            fontSize: 20,
            color: MyColors.darkBlue,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
