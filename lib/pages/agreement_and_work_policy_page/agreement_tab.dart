
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class AgreementTab extends StatelessWidget {
  const AgreementTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Agreement Heading:',
            style: MyFontStyle.mediumText.copyWith(
              color: MyColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '1. Scope of Agreement: Clearly define the scope and purpose of the agreement.\n2. Duration: Specify the start date and any end date or conditions regarding the duration of the agreement.\n3. Obligations of Each Party: Clearly outline the responsibilities and obligations of each party involved.\n4. Payment Terms: If applicable, detail any financial considerations, payment schedules, or terms.\n5. Confidentiality: Address any confidentiality or non-disclosure clauses to protect sensitive information.\n6. Termination: Outline the conditions under which either party can terminate the agreement.\n7. Dispute Resolution: Specify the process for resolving disputes between the parties.\n8 Governing Law: Indicate the jurisdiction and governing law that will apply in case of any legal matters.\n9. Amendments: Outline the process for making changes or amendments to the agreement.\n10 Signatures: Include spaces for signatures and dates from both parties, signifying their agreement to the terms outlined.\n\nThis is a general template, and the specifics may vary based on the nature of the agreement. It\'s recommended to consult with legal professionals when drafting or reviewing agreements to ensure compliance with relevant laws and regulations.',
            style: MyFontStyle.normalText.copyWith(
              fontWeight: FontWeight.w400,
              height: 1.4,
              wordSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
