import 'package:doctor_side/models/review_model.dart';
import 'package:doctor_side/pages/review%20page/review_card_widget.dart';
import 'package:flutter/material.dart';

import 'review_status_widget.dart';

class PositiveInClinicWidget extends StatelessWidget {
  const PositiveInClinicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: positiveInClinicList.length,
      itemBuilder: (context, index) {
        return ReviewCardWidget(
          img: positiveInClinicList[index].img,
          name: positiveInClinicList[index].name,
          hospitalName: positiveInClinicList[index].hospitalName,
          date: positiveInClinicList[index].date,
          time: positiveInClinicList[index].time,
          review: positiveInClinicList[index].review,
          patientId: positiveInClinicList[index].patientId,
          status: Status.positive,
        );
      },
    );
  }
}
