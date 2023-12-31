import 'package:doctor_side/pages/payment%20page/transaction_details_page.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentTileWidget extends StatelessWidget {
  final String no;
  final String amount;
  final Color color;
  const PaymentTileWidget({
    super.key,
    required this.no,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(const TransactionDetailsPage());
      },
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: MyColors.darkGrey.withOpacity(0.1),
              offset: const Offset(0, 6),
              blurRadius: 25,
            ),
          ],
        ),
        child: ListTile(
          tileColor: MyColors.white,
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: MyColors.primaryBlue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Padding(
              padding: EdgeInsets.all(14),
              child: Image(
                image: AssetImage(
                  'assets/icons/note.png',
                ),
              ),
            ),
          ),
          title: Row(
            children: [
              Text(
                'Payment ',
                style: MyFontStyle.mediumText.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '#$no',
                style: MyFontStyle.captionText.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              const Image(
                height: 16,
                image: AssetImage(
                  'assets/icons/appointment.png',
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '01 june, 30 June',
                style: MyFontStyle.smallText.copyWith(
                  fontWeight: FontWeight.w400,
                  color: MyColors.darkGrey,
                ),
              ),
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: MyFontStyle.captionText.copyWith(
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
              const SizedBox(height: 8),
              const Image(
                height: 18,
                image: AssetImage(
                  'assets/icons/done.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
