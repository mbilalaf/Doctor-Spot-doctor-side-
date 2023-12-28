import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.primaryBlue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Refer a patient',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w700,
              color: MyColors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(width: 24),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: MyColors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: MyColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
