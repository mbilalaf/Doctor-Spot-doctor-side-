import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 22,
      ),
      child: Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: MyColors.darkGrey.withOpacity(0.05),
              offset: const Offset(0, 7),
              blurRadius: 20,
            ),
          ],
        ),
        child: const FractionallySizedBox(
          heightFactor: 0.6,
          child: Image(
            image: AssetImage(
              'assets/icons/Notification.png',
            ),
          ),
        ),
      ),
    );
  }
}
