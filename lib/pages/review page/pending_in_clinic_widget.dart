import 'package:doctor_side/models/review_model.dart';
import 'package:doctor_side/pages/review%20page/review_card_widget.dart';
import 'package:flutter/material.dart';

import 'review_status_widget.dart';

class PendingInClinicWidget extends StatelessWidget {
  const PendingInClinicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pendingInClinicList.length,
      itemBuilder: (context, index) {
        return ReviewCardWidget(
          isPending: true,
          img: pendingInClinicList[index].img,
          name: pendingInClinicList[index].name,
          hospitalName: pendingInClinicList[index].hospitalName,
          date: pendingInClinicList[index].date,
          time: pendingInClinicList[index].time,
          review: pendingInClinicList[index].review,
          patientId: pendingInClinicList[index].patientId,
          status: Status.pending,
        );
      },
    );
  }
}
