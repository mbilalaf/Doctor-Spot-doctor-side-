import 'package:doctor_side/pages/payment%20page/account_details_card.dart';
import 'package:flutter/material.dart';

class AppBankDetailTab extends StatelessWidget {
  const AppBankDetailTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AccountDetailsCard(
            accountNo: '02040103780684',
            logo: 'assets/images/meezan.png',
            branchCode: 'Branch Code# 123',
            accountTitle: 'Doctor Spot Medicare (Private) LTD',
          ),
          AccountDetailsCard(
            accountNo: '02040103780684',
            logo: 'assets/images/allied.png',
            branchCode: 'Branch Code# 123',
            accountTitle: 'Doctor Spot Medicare (Private) LTD',
          ),
          AccountDetailsCard(
            isBank: false,
            accountNo: '02040103780684',
            logo: 'assets/images/easy-paisa.png',
            branchCode: 'Branch Code# 123',
            accountTitle: 'Doctor Spot Medicare (Private) LTD',
            accountHolderName: 'Ibrahim Qureshi',
          ),
          AccountDetailsCard(
            isBank: false,
            accountNo: '02040103780684',
            logo: 'assets/images/jazz-cash.png',
            branchCode: 'Branch Code# 123',
            accountTitle: 'Doctor Spot Medicare (Private) LTD',
            accountHolderName: 'Ibrahim Qureshi',
          ),
        ],
      ),
    );
  }
}
