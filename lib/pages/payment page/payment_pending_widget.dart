import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PaymentPendingWidget extends StatelessWidget {
  final Widget header;
  final Widget button;
  final String? warning;
  final bool isWarning;
  const PaymentPendingWidget({
    super.key,
    required this.header,
    required this.button,
    this.warning,
    this.isWarning = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: MyColors.darkGrey.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 25,
          ),
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header,
            const SizedBox(height: 16),
            button,
            const SizedBox(height: 12),
            Text(
              textAlign: TextAlign.center,
              warning ?? '',
              style: MyFontStyle.smallText.copyWith(
                fontWeight: FontWeight.w400,
                color: isWarning ? MyColors.red : MyColors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
