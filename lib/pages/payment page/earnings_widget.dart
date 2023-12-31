import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class EarningsWidget extends StatelessWidget {
  final String name;
  final String? hospitalName;
  final String charges;
  final Color chargesColor;
  final String? date;
  final bool showContainer;
  const EarningsWidget({
    super.key,
    required this.name,
    this.hospitalName,
    required this.charges,
    this.date,
    this.showContainer = true,
    this.chargesColor = MyColors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            showContainer
                ? Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: MyColors.primaryBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                : Container(),
            showContainer ? const SizedBox(width: 16) : const SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: MyFontStyle.normalText.copyWith(
                    color: MyColors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  hospitalName ?? '',
                  style: MyFontStyle.smallText.copyWith(
                    color: MyColors.darkGrey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  charges,
                  style: MyFontStyle.normalText.copyWith(
                    color: chargesColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date ?? '',
                  style: MyFontStyle.smallText.copyWith(
                    color: MyColors.darkGrey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
