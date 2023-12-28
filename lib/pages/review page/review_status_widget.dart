import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Status { positive, negative, pending }

class ChangeStatus extends StatelessWidget {
  final Status status;

  const ChangeStatus({super.key, required this.status});

  Color getBackgroundColor() {
    switch (status) {
      case Status.positive:
        return MyColors.green.withOpacity(0.1);
      case Status.negative:
        return MyColors.red.withOpacity(0.1);
      case Status.pending:
        return MyColors.darkGrey.withOpacity(0.1);
    }
  }

  Color getTextColor() {
    switch (status) {
      case Status.positive:
        return MyColors.green;
      case Status.negative:
        return MyColors.red;
      case Status.pending:
        return MyColors.darkGrey;
    }
  }

  String getStatusText() {
    switch (status) {
      case Status.positive:
        return 'Positive';
      case Status.negative:
        return 'Negative';
      case Status.pending:
        return 'Pending';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 53,
      decoration: BoxDecoration(
        color: getBackgroundColor(),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          getStatusText(),
          style: GoogleFonts.nunito(
            color: getTextColor(),
            fontWeight: FontWeight.w600,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
