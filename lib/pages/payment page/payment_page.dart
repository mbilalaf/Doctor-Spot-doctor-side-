import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'payment_tab_bar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({
    super.key,
  });

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
          'Payment',
          style: MyFontStyle.largeText,
        ),
      ),
      body: const PaymentTabBar(),
    );
  }
}
