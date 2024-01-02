
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class WorkPolicyTab extends StatelessWidget {
  const WorkPolicyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Work Policy Demo Heading:',
            style: MyFontStyle.mediumText.copyWith(
              color: MyColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Employee Work Policy Overview and Demonstration',
            style: MyFontStyle.mediumText.copyWith(
              color: MyColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '1. Introduction:\n   • Brief overview of the importance of work policies in maintaining a positive workplace culture.\n2. Scope of Work Policies:\n   • Explanation of the various policies that govern employee conduct, including but not limited to code of conduct, attendance, communication, and use of company resources.\n3. Compliance and Legal Considerations:\n   • Overview of legal requirements and industry standards that the organization adheres to in formulating its work policies.\n4. Employee Rights and Responsibilities:\n   • Detailed explanation of the rights and responsibilities of employees as outlined in the work policy.\n5. Workplace Safety:\n   • Discussion on safety protocols, emergency procedures, and the importance of maintaining a safe working environment.\n6. Disciplinary Actions:\n   • Explanation of the consequences for policy violations, along with the progressive disciplinary process.\n7. Q&A Session:\n   • Open forum for employees to ask questions, seek clarification, and engage in discussions regarding the work policies.\n8. Benefits of the Demo:\n   • Improved understanding of company expectations.\n   • Enhanced compliance with legal and regulatory standards.\n   • Clear communication of employee rights and responsibilities.\n   • Strengthened workplace culture through consistent policy enforcement.\n   1. This demo aims to empower employees with the knowledge needed to navigate the work environment responsibly and contribute to the overall success of the organization.',
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
