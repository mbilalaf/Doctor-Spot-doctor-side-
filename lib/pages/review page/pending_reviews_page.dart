import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';

import 'pending_in_clinic_widget.dart';
import 'pending_video_consultation_widget.dart';
import 'simple_tab_bar.dart';

class PendingReviewsPage extends StatelessWidget {
  const PendingReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: MyTabBar(
                tab1Content: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: PendingInClinicWidget(),
                ),
                tab2Content: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: PendingVideoConsultationWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
