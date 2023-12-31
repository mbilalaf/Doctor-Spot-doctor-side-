import 'package:doctor_side/pages/payment%20page/info_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'calculation_earnings_widget.dart';

class TransactionDetailsPage extends StatelessWidget {
  const TransactionDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: MyColors.darkBlue,
        ),
        centerTitle: true,
        title: Text(
          'Transaction Detail',
          style: MyFontStyle.largeText,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Detail',
                style: MyFontStyle.mediumText.copyWith(
                  color: MyColors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              const InfoWidget(
                name: 'Name: ',
                detail: 'Richard Lee',
              ),
              const SizedBox(height: 12),
              const InfoWidget(
                name: 'Doctor Name: ',
                detail: 'Dr. Adnan Khan',
              ),
              const SizedBox(height: 12),
              const InfoWidget(
                name: 'Date & Time : ',
                detail: '(Sunday, 01 June) 12 PM',
              ),
              const SizedBox(height: 24),
              Text(
                'Screen Shot',
                style: MyFontStyle.mediumText.copyWith(
                  color: MyColors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        surfaceTintColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        content: Image(
                          image: AssetImage(
                            'assets/images/screen-shot.png',
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: MyColors.darkGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/screen-shot.png',
                    ),
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
