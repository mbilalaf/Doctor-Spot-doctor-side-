import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'comments_details_page.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: GestureDetector(
            onTap: () {
              Get.to(const CommentsDetailsPage());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: MyColors.primaryBlue,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12),
                        child: Image(
                          color: MyColors.white,
                          image: AssetImage(
                            'assets/icons/teeth.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'RCT.tooth pain',
                          style: MyFontStyle.captionText.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Asking for Self, Female40, Quetta',
                          style: MyFontStyle.smallText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: MyColors.darkGrey,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '5 hour ago',
                          style: MyFontStyle.smallText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: MyColors.darkGrey,
                          ),
                        ),
                        const SizedBox(height: 14),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.6,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed.',
                            style: MyFontStyle.smallText.copyWith(
                              fontWeight: FontWeight.w400,
                              color: MyColors.darkGrey,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Image(
                            height: 14,
                            image: AssetImage(
                              'assets/icons/comments.png',
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Comments',
                            style: MyFontStyle.smallText.copyWith(
                              fontWeight: FontWeight.w500,
                              color: MyColors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 14),
                      Row(
                        children: [
                          const Image(
                            height: 14,
                            image: AssetImage(
                              'assets/icons/share.png',
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Share',
                            style: MyFontStyle.smallText.copyWith(
                              fontWeight: FontWeight.w500,
                              color: MyColors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: MyColors.lightGrey,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
