import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PaymentPendingHeader extends StatelessWidget {
  final String date;
  final String subtitle;
  final String ammount;
  final bool isCleared;
  const PaymentPendingHeader({
    super.key,
    required this.date,
    required this.subtitle,
    required this.ammount,
    this.isCleared = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
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
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Pending',
                      style: MyFontStyle.mediumText.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Image(
                          height: 16,
                          image: AssetImage(
                            'assets/icons/appointment.png',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          date,
                          style: MyFontStyle.smallText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: MyColors.darkGrey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subtitle,
                      style: MyFontStyle.smallText.copyWith(
                        fontWeight: FontWeight.w400,
                        color: MyColors.darkGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              ammount,
              style: MyFontStyle.captionText.copyWith(
                fontWeight: FontWeight.w600,
                color: isCleared ? MyColors.green : MyColors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
