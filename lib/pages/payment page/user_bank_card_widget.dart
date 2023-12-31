import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class UserBankCardWidget extends StatelessWidget {
  final String logo;
  final String bankName;
  const UserBankCardWidget({
    super.key,
    required this.logo,
    required this.bankName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: MyColors.darkGrey.withOpacity(0.1),
            offset: const Offset(0, 6),
            blurRadius: 25,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              color: MyColors.primaryBlue,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(
                  logo,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            bankName,
            style: MyFontStyle.captionText.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
