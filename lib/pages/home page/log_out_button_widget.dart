import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogOutButtonWidget extends StatelessWidget {
  const LogOutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Container(
        height: 48,
        width: 148,
        decoration: BoxDecoration(
          color: MyColors.primaryBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 20,
              image: AssetImage(
                'assets/icons/log-out.png',
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'Log Out',
              style: GoogleFonts.nunito(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: MyColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
