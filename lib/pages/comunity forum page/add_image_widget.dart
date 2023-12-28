import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class AddImageWidget extends StatelessWidget {
  const AddImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 57,
      decoration: BoxDecoration(
        color: MyColors.primaryBlue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Image(
                image: AssetImage(
                  'assets/icons/plus.png',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Add',
              style: MyFontStyle.smallText.copyWith(
                color: MyColors.primaryBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
