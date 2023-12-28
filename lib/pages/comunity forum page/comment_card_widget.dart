import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CommentCardWidget extends StatelessWidget {
  const CommentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: MediaQuery.of(context).size.width / 1.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 69,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                        ),
                        child: Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            'assets/images/comment-1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 69,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                        ),
                        child: Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            'assets/images/comment-2.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 69,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                        ),
                        child: Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            'assets/images/comment-3.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 69,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                        ),
                        child: Image(
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            'assets/images/comment-4.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing Fringilla nunc aliquam volutpat suscipit porttitor in quis sagittis hac. Tellus sed ac libero',
          style: MyFontStyle.normalText.copyWith(
            color: MyColors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Image(
              height: 14,
              image: AssetImage(
                'assets/icons/comments.png',
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '25 Comments',
              style: MyFontStyle.smallText.copyWith(
                color: MyColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
