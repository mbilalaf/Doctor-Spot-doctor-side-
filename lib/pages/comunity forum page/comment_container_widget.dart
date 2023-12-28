import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CommentContainerWidget extends StatelessWidget {
  final Widget container;
  const CommentContainerWidget({super.key, required this.container});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: MyColors.darkGrey.withOpacity(0.1),
            offset: const Offset(0, 7),
            blurRadius: 25,
          ),
        ],
      ),
      child: Column(
        children: [
          container,
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Reply',
                style: MyFontStyle.smallText.copyWith(
                  color: MyColors.darkGrey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
