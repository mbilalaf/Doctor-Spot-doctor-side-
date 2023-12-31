import 'package:doctor_side/pages/payment%20page/withdraw_funds_page.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calculation_earnings_widget.dart';
import 'in_clinic_earning_widget.dart';
import 'video_consulting_earning_widget.dart';

class EarningTab extends StatelessWidget {
  const EarningTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 40, left: 22, right: 22, bottom: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const InClinicEarningWidget(),
              const SizedBox(height: 24),
              const VideoConsultingEarningWidget(),
              const SizedBox(height: 24),
              const CalculationEarningsWidget(),
              const SizedBox(height: 24),
              DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Total payment',
                    style: MyFontStyle.mediumText.copyWith(
                      color: MyColors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Rs.1,680',
                    style: MyFontStyle.mediumText.copyWith(
                      color: MyColors.green,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'your payment after our charges',
                style: MyFontStyle.normalText.copyWith(
                  color: MyColors.darkGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Get.to(const WithdrawFundsPage());
                },
                child: Text(
                  'Withdraw Request',
                  style: MyFontStyle.normalText.copyWith(
                    color: MyColors.red,
                    decoration: TextDecoration.underline,
                    decorationColor: MyColors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
