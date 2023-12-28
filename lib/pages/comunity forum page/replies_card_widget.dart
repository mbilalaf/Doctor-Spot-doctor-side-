import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/font_styles.dart';
import 'comment_card.dart';

class RepliesCardWidget extends StatelessWidget {
  const RepliesCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
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
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommentCard(
              icon: true,
              image: 'assets/images/pic-1.png',
              name: 'Dr. Jemma Ray( me )',
              time: '5d ago',
              comment:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing Fringilla nunc aliquam volutpat suscipit porttitor in quis sagittis hac. Tellus sed ac libero',
            ),
            const SizedBox(height: 10),
            Divider(color: MyColors.darkGrey.withOpacity(0.1)),
            const SizedBox(height: 8),
            Text(
              '2 Reply your comments',
              style: MyFontStyle.captionText.copyWith(
                color: MyColors.primaryBlue,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const CommentCard(
              image: 'assets/images/pic-2.png',
              name: 'Arlene McCoy',
              time: '5d ago',
              comment:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing Fringilla nunc aliquam volutpat suscipit porttitor in quis sagittis hac. Tellus sed ac libero',
            ),
            const SizedBox(height: 20),
            const CommentCard(
              image: 'assets/images/pic-3.png',
              name: 'Kathryn Murphy',
              time: '5d ago',
              comment:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing Fringilla nunc aliquam volutpat suscipit porttitor in quis sagittis hac. Tellus sed ac libero',
            ),
          ],
        ),
      ),
    );
  }
}
