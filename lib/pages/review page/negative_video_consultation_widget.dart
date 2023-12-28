import 'package:doctor_side/models/review_model.dart';
import 'package:doctor_side/pages/review%20page/review_card_widget.dart';
import 'package:flutter/material.dart';

import 'review_status_widget.dart';

class NegativeVideoConsultationWidget extends StatelessWidget {
  const NegativeVideoConsultationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: negativeVidoeConsultationList.length,
      itemBuilder: (context, index) {
        return ReviewCardWidget(
          inClinic: false,
          img: negativeVidoeConsultationList[index].img,
          name: negativeVidoeConsultationList[index].name,
          hospitalName: negativeVidoeConsultationList[index].hospitalName,
          date: negativeVidoeConsultationList[index].date,
          time: negativeVidoeConsultationList[index].time,
          review: negativeVidoeConsultationList[index].review,
          patientId: negativeVidoeConsultationList[index].patientId,
          status: Status.negative,
        );
      },
    );
  }
}
