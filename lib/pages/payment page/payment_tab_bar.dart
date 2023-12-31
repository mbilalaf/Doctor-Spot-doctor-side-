import 'package:doctor_side/pages/payment%20page/account_tab.dart';
import 'package:doctor_side/pages/payment%20page/earning_tab.dart';
import 'package:doctor_side/pages/payment%20page/history_tab.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/tab_bar_controller.dart';
import 'payment_verification_tab.dart';

class PaymentTabBar extends StatefulWidget {
  const PaymentTabBar({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<PaymentTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  TbaBarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(
              text: 'Earning',
            ),
            Tab(
              text: 'History',
            ),
            Tab(
              text: 'Payment verification',
            ),
            Tab(
              text: 'Account',
            ),
          ],
          dividerColor: Colors.transparent,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: MyColors.black,
                width: 2.0,
              ),
            ),
          ),
          labelStyle: MyFontStyle.normalText.copyWith(
            fontWeight: FontWeight.w600,
          ),
          labelColor: MyColors.black,
          unselectedLabelColor: MyColors.darkGrey,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              EarningTab(),
              HistoryTab(),
              PaymentVerificationTab(),
              AccountTab(),
            ],
          ),
        ),
      ],
    );
  }
}
