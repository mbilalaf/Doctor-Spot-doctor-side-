import 'package:doctor_side/pages/payment%20page/earnings_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoConsultingEarningWidget extends StatelessWidget {
  const VideoConsultingEarningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: MyColors.darkGrey.withOpacity(0.1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Image(
                      color: MyColors.green,
                      height: 28,
                      image: AssetImage(
                        'assets/icons/video-call.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Video consultation Earning',
                      style: GoogleFonts.openSans(
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const EarningsWidget(
                  name: 'Marvin McKinneyr',
                  hospitalName: 'Nor (MHC) Clinic Pes...',
                  charges: 'Rs 2,000',
                  date: 'Sunday, 12 June',
                ),
                const SizedBox(height: 16),
                DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
                const SizedBox(height: 15),
                const EarningsWidget(
                  name: 'Marvin McKinneyr',
                  hospitalName: 'Nor (MHC) Clinic Pes...',
                  charges: 'Rs 1,500',
                  date: 'Sunday, 12 June',
                ),
                const SizedBox(height: 16),
                DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
                const SizedBox(height: 15),
                const EarningsWidget(
                  name: 'Marvin McKinneyr',
                  hospitalName: 'Nor (MHC) Clinic Pes...',
                  charges: 'Rs 600',
                  date: 'Sunday, 12 June',
                ),
                const SizedBox(height: 16),
                DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'View More',
                    style: MyFontStyle.captionText.copyWith(
                      color: MyColors.red,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      decorationColor: MyColors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
