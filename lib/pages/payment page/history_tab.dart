import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'payment_tile_widget.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'October 15,2023',
                style: MyFontStyle.mediumText.copyWith(
                  color: MyColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              const PaymentTileWidget(
                amount: '-200',
                color: MyColors.red,
                no: '1',
              ),
              const SizedBox(height: 15),
              const PaymentTileWidget(
                amount: '+3200',
                color: MyColors.green,
                no: '2',
              ),
              const SizedBox(height: 15),
              const PaymentTileWidget(
                amount: '-550',
                color: MyColors.red,
                no: '3',
              ),
              const SizedBox(height: 15),
              const PaymentTileWidget(
                amount: '+1800',
                color: MyColors.green,
                no: '4',
              ),
              const SizedBox(height: 15),
              const PaymentTileWidget(
                amount: '-2900',
                color: MyColors.red,
                no: '5',
              ),
              const SizedBox(height: 15),
              const PaymentTileWidget(
                amount: '+2600',
                color: MyColors.green,
                no: '6',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
