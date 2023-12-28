import 'package:doctor_side/models/review_model.dart';
import 'package:doctor_side/pages/review%20page/review_card_widget.dart';
import 'package:flutter/material.dart';

import 'review_status_widget.dart';

class PendingVideoConsultationWidget extends StatelessWidget {
  const PendingVideoConsultationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: pendingVidoeConsultationList.length,
      itemBuilder: (context, index) {
        return ReviewCardWidget(
          isPending: true,
          inClinic: false,
          img: pendingVidoeConsultationList[index].img,
          name: pendingVidoeConsultationList[index].name,
          hospitalName: pendingVidoeConsultationList[index].hospitalName,
          date: pendingVidoeConsultationList[index].date,
          time: pendingVidoeConsultationList[index].time,
          review: pendingVidoeConsultationList[index].review,
          patientId: pendingVidoeConsultationList[index].patientId,
          status: Status.pending,
        );
      },
    );
  }
}
