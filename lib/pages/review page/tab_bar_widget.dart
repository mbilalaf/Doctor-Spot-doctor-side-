import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabbarwidget extends StatelessWidget {
  final TabController tabController;

  final List<Widget> tabs;
  const Tabbarwidget({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.39),
        color: MyColors.lightGrey,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: TabBar(
          controller: tabController,
          tabs: tabs,
          labelColor: MyColors.white,
          unselectedLabelColor: MyColors.darkGrey,
          labelStyle: GoogleFonts.nunito(
            color: MyColors.darkGrey,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(9.39),
            color: MyColors.primaryBlue,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: Colors.transparent,
        ),
      ),
    );
  }
}
