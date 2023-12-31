import 'package:doctor_side/pages/payment%20page/earnings_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculationEarningsWidget extends StatelessWidget {
  const CalculationEarningsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
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
                      height: 28,
                      image: AssetImage(
                        'assets/icons/calculator.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Calculation',
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
                  showContainer: false,
                  name: 'Total payment Paid Online',
                  charges: 'Rs 2,000',
                  chargesColor: MyColors.primaryBlue,
                ),
                DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
                const SizedBox(height: 15),
                const EarningsWidget(
                  showContainer: false,
                  name: 'Total Cash Paid',
                  charges: 'Rs 2,000',
                  chargesColor: MyColors.primaryBlue,
                ),
                DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
                const SizedBox(height: 15),
                const EarningsWidget(
                  showContainer: false,
                  name: 'Online + cash',
                  charges: 'Rs 4,000',
                  chargesColor: MyColors.primaryBlue,
                ),
                const EarningsWidget(
                  showContainer: false,
                  name: 'Platform Charges',
                  charges: '- Rs 120',
                  chargesColor: MyColors.red,
                ),
                const EarningsWidget(
                  showContainer: false,
                  name: 'You Already Received Cash',
                  charges: '- Rs 2,000',
                  chargesColor: MyColors.red,
                ),
                const EarningsWidget(
                  showContainer: false,
                  name: 'Last Month Remining amount',
                  charges: '- Rs 2,000',
                  chargesColor: MyColors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
