import 'package:doctor_side/pages/settings_page/notification_container.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
          'Setting',
          style: MyFontStyle.largeText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General Setting',
              style: MyFontStyle.titleText,
            ),
            const SizedBox(height: 24),
            const NotificationContainer(
              title: 'New Notification',
              subTitle: 'Reggae Riffs',
            ),
            const SizedBox(height: 15),
            const NotificationContainer(
              title: 'Report',
              subTitle: 'Funky Beats',
            ),
            const SizedBox(height: 15),
            const NotificationContainer(
              title: 'New Appointment',
              subTitle: 'Piano Paradise',
            ),
          ],
        ),
      ),
    );
  }
}
