import 'package:doctor_side/pages/payment%20page/user_bank_card_widget.dart';
import 'package:flutter/material.dart';

class YourBankDetailTab extends StatelessWidget {
  const YourBankDetailTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 24, left: 6, right: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UserBankCardWidget(
            logo: 'assets/icons/bank.png',
            bankName: 'Add Your Bank Account',
          ),
          SizedBox(height: 15),
          UserBankCardWidget(
            logo: 'assets/icons/easy-paisa.png',
            bankName: 'Add Your Bank Account',
          ),
          SizedBox(height: 15),
          UserBankCardWidget(
            logo: 'assets/icons/jazz-cash.png',
            bankName: 'Add Your Bank Account',
          ),
        ],
      ),
    );
  }
}
