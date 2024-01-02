import 'package:doctor_side/pages/contact_us_page/conotact_us_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

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
          'Contact Us',
          style: MyFontStyle.largeText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        child: Column(
          children: [
            const ContactUsWidget(number: '(406) 555-0120'),
            Divider(
              color: MyColors.darkGrey.withOpacity(0.1),
            ),
            const ContactUsWidget(number: '(307) 555-0133'),
            Divider(
              color: MyColors.darkGrey.withOpacity(0.1),
            ),
            const ContactUsWidget(number: '(209) 555-0104'),
            Divider(
              color: MyColors.darkGrey.withOpacity(0.1),
            ),
          ],
        ),
      ),
    );
  }
}
