import 'package:doctor_side/models/review_model.dart';
import 'package:doctor_side/pages/review%20page/review_card_widget.dart';
import 'package:flutter/material.dart';

import 'review_status_widget.dart';

class NegativeInClinicWidget extends StatelessWidget {
  const NegativeInClinicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: negativeInClinicList.length,
      itemBuilder: (context, index) {
        return ReviewCardWidget(
          img: negativeInClinicList[index].img,
          name: negativeInClinicList[index].name,
          hospitalName: negativeInClinicList[index].hospitalName,
          date: negativeInClinicList[index].date,
          time: negativeInClinicList[index].time,
          review: negativeInClinicList[index].review,
          patientId: negativeInClinicList[index].patientId,
          status: Status.negative,
        );
      },
    );
  }
}
