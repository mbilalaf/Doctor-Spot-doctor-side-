import 'package:doctor_side/pages/review%20page/review_details_page.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'review_status_widget.dart';

class ReviewCardWidget extends StatelessWidget {
  final String img;
  final String name;
  final String patientId;
  final String hospitalName;
  final String date;
  final String time;
  final String review;
  final Status status;
  final bool inClinic;
  final bool isPending;

  const ReviewCardWidget({
    super.key,
    required this.img,
    required this.name,
    required this.hospitalName,
    required this.date,
    required this.time,
    required this.review,
    required this.patientId,
    required this.status,
    this.inClinic = true,
    this.isPending = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: isPending == true ? 350 : 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: MyColors.darkGrey.withOpacity(0.05),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: MyColors.darkGrey.withOpacity(0.05),
              offset: const Offset(2, 12),
              blurRadius: 20,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 61,
                        width: 57,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Image(
                          image: AssetImage(
                            img,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: MyFontStyle.mediumText.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            patientId,
                            style: MyFontStyle.smallText.copyWith(
                              color: MyColors.darkGrey,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              inClinic == true
                                  ? const Image(
                                      height: 13,
                                      color: MyColors.green,
                                      image: AssetImage(
                                        'assets/icons/clinic.png',
                                      ),
                                    )
                                  : const Image(
                                      height: 13,
                                      color: MyColors.green,
                                      image: AssetImage(
                                        'assets/icons/video-call.png',
                                      ),
                                    ),
                              const SizedBox(width: 4),
                              inClinic == true
                                  ? Text(
                                      hospitalName,
                                      style: MyFontStyle.smallText.copyWith(
                                        color: MyColors.darkGrey,
                                      ),
                                    )
                                  : Text(
                                      'Video Call',
                                      style: MyFontStyle.smallText.copyWith(
                                        color: MyColors.darkGrey,
                                      ),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ChangeStatus(status: status),
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: MyColors.darkGrey.withOpacity(0.1)),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Image(
                        height: 16,
                        image: AssetImage(
                          'assets/icons/appointment.png',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        date,
                        style: MyFontStyle.smallText.copyWith(
                          color: MyColors.darkGrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image(
                        height: 16,
                        color: MyColors.darkGrey.withOpacity(0.6),
                        image: const AssetImage('assets/icons/clock.png'),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        time,
                        style: MyFontStyle.smallText.copyWith(
                          color: MyColors.darkGrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                review,
                style: MyFontStyle.smallText.copyWith(
                  color: MyColors.darkGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => Get.to(const ReviewDetailsPage()),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: MyColors.primaryBlue.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        height: 16,
                        image: AssetImage(
                          'assets/icons/full-star.png',
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Review Detail',
                        style: MyFontStyle.normalText.copyWith(
                          color: MyColors.primaryBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              isPending == true ? const SizedBox(height: 20) : const SizedBox(),
              isPending == true
                  ? Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'solve the negative reviews otherwise after 7 days it will be published.',
                        style: MyFontStyle.smallText.copyWith(
                          color: MyColors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
