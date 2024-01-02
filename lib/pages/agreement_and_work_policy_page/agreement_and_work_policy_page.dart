import 'package:doctor_side/pages/agreement_and_work_policy_page/agreement_tab.dart';
import 'package:doctor_side/pages/agreement_and_work_policy_page/work_policy_tab.dart';
import 'package:doctor_side/pages/review%20page/tab_bar_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class AgreementAndWorkPolicyPage extends StatefulWidget {
  const AgreementAndWorkPolicyPage({super.key});

  @override
  State<AgreementAndWorkPolicyPage> createState() =>
      _AgreementAndWorkPolicyPageState();
}

class _AgreementAndWorkPolicyPageState extends State<AgreementAndWorkPolicyPage>
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
      appBar: AppBar(
        backgroundColor: MyColors.white,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: MyColors.darkBlue,
        ),
        centerTitle: true,
        title: Text(
          'Agreement & Work Policy',
          style: MyFontStyle.largeText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        child: Column(
          children: [
            Tabbarwidget(
              tabController: tabController,
              tabs: const [
                Tab(text: 'Agreement'),
                Tab(text: 'Work Policy'),
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    AgreementTab(),
                    WorkPolicyTab(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
