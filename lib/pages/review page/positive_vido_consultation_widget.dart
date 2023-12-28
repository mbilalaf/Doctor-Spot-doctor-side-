import 'package:doctor_side/models/review_model.dart';
import 'package:doctor_side/pages/review%20page/review_card_widget.dart';
import 'package:flutter/material.dart';

import 'review_status_widget.dart';

class PositiveVideoConsultationWidget extends StatelessWidget {
  const PositiveVideoConsultationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: positiveVidoeConsultationList.length,
      itemBuilder: (context, index) {
        return ReviewCardWidget(
          inClinic: false,
          img: positiveVidoeConsultationList[index].img,
          name: positiveVidoeConsultationList[index].name,
          hospitalName: positiveVidoeConsultationList[index].hospitalName,
          date: positiveVidoeConsultationList[index].date,
          time: positiveVidoeConsultationList[index].time,
          review: positiveVidoeConsultationList[index].review,
          patientId: positiveVidoeConsultationList[index].patientId,
          status: Status.positive,
        );
      },
    );
  }
}
