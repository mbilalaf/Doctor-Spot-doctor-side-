import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class ContactUsWidget extends StatelessWidget {
  final String number;
  const ContactUsWidget({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: MyColors.primaryBlue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.all(12),
          child: Image(
            image: AssetImage(
              'assets/icons/head-phones.png',
            ),
          ),
        ),
      ),
      title: Text(
        'Contact Us',
        style: MyFontStyle.mediumText.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        number,
        style: MyFontStyle.normalText.copyWith(
          fontWeight: FontWeight.w600,
          color: MyColors.darkGrey,
        ),
      ),
      trailing: SizedBox(
        height: 30,
        width: 68,
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: MyColors.primaryBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    'assets/icons/call-calling.png',
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: MyColors.primaryBlue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    'assets/icons/whatsapp.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
