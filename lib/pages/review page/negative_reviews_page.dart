import 'package:doctor_side/pages/review%20page/negative_in_clinic_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'negative_video_consultation_widget.dart';
import 'simple_tab_bar.dart';

class NegativeReviewsPage extends StatelessWidget {
  const NegativeReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.white,
      body: Column(
        children: [
          SizedBox(height: 24),
          Expanded(
            child: MyTabBar(
              tab1Content: Padding(
                padding: EdgeInsets.only(top: 24),
                child: NegativeInClinicWidget(),
              ),
              tab2Content: Padding(
                padding: EdgeInsets.only(top: 24),
                child: NegativeVideoConsultationWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
