import 'package:doctor_side/pages/review%20page/review_page.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingCardWidget extends StatelessWidget {
  const RatingCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
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
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            GestureDetector(
              onTap: () => Get.to(const ReviewPage()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(
                        height: 14,
                        width: 14,
                        image: AssetImage(
                          'assets/icons/half-star.png',
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Over All Rating',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: MyColors.primaryBlue,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Image(
                        height: 14,
                        width: 14,
                        image: AssetImage(
                          'assets/icons/comment.png',
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '/ 5 (0) Review',
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: MyColors.primaryBlue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Divider(
              color: MyColors.darkGrey.withOpacity(0.1),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 46,
                      width: 42,
                      decoration: const BoxDecoration(
                        color: MyColors.lightOrange,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          color: MyColors.orange,
                          image: AssetImage(
                            'assets/icons/half-star.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '4.5',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: MyColors.darkBlue,
                      ),
                    ),
                    Text(
                      'In-clinic Score',
                      style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: MyColors.lightBlue,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 46,
                      width: 42,
                      decoration: const BoxDecoration(
                        color: MyColors.lightOrange,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          color: MyColors.orange,
                          image: AssetImage(
                            'assets/icons/half-star.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '4.5',
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: MyColors.darkBlue,
                      ),
                    ),
                    Text(
                      'Online clinic Score',
                      style: GoogleFonts.nunito(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: MyColors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
