import 'package:doctor_side/pages/tips_and_guide_page/tips_and_guide_button.dart';
import 'package:doctor_side/pages/tips_and_guide_page/tips_text_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class TipsAndGuidePage extends StatelessWidget {
  const TipsAndGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: MyColors.darkBlue,
        ),
        centerTitle: true,
        title: Text(
          'Tips & Guide',
          style: MyFontStyle.largeText,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // button tabBar

              // SizedBox(
              //   height: 38,
              //   child: TipsAndGuideButton(),
              // ),
              const SizedBox(height: 24),
              const TipsTextWidget(
                title: 'Health Tips:',
                description:
                    'Provide tips and advice on various health issues, such as the importance of a balanced diet, exercise, and proper rest.',
              ),
              const SizedBox(height: 10),
              const TipsTextWidget(
                title: 'Diseases and Their Symptoms:',
                description:
                    'Inform users about different diseases and their symptoms so that they can understand how to take care of their health',
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 108,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/symptom-1.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 108,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/symptom-1.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 108,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/symptom-2.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const TipsTextWidget(
                title: 'Information on Medications:',
                description:
                    'Guide users on basic information about medications and how to use them.',
              ),
              const SizedBox(height: 10),
              const TipsTextWidget(
                title: 'Video Tutorials:',
                description:
                    'If possible, include video tutorials for visual learning.',
              ),
              const SizedBox(height: 10),
              const TipsTextWidget(
                title: 'Emergency Contacts:',
                description:
                    'Provide contact information for local hospitals and clinics for emergency situations.',
              ),
              const SizedBox(height: 80),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Image(
                      height: 50,
                      image: AssetImage(
                        'assets/icons/logo.png',
                      ),
                    ),
                    Text(
                      'I hope these tips are helpful for your doctor app!',
                      style: MyFontStyle.captionText
                          .copyWith(color: MyColors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
