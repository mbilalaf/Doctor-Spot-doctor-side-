import 'package:doctor_side/pages/payment%20page/app_bank_detail_tab.dart';
import 'package:doctor_side/pages/payment%20page/your_bank_detail_tab.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';

import '../review page/tab_bar_widget.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({super.key});

  @override
  State<AccountTab> createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        child: Column(
          children: [
            Tabbarwidget(
              tabController: tabController,
              tabs: const [
                Tab(text: 'App Bank Detail'),
                Tab(text: 'Your Bank Detail'),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  AppBankDetailTab(),
                  YourBankDetailTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
