import 'package:doctor_side/models/my_model.dart';
import 'package:doctor_side/pages/comunity%20forum%20page/community_forum_page.dart';
import 'package:doctor_side/pages/payment%20page/payment_page.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: myList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 8,
        childAspectRatio: 16 / 16,
      ),
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 165,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: MyColors.darkGrey.withOpacity(0.1),
                    offset: const Offset(0, 4),
                    blurRadius: 25,
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () => Get.to(pages[index]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 67,
                              width: 67,
                              decoration: BoxDecoration(
                                color: MyColors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: MyColors.darkGrey.withOpacity(0.1),
                                    offset: const Offset(0, 4),
                                    blurRadius: 25,
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Image(
                                      image: AssetImage(
                                        myList[index].img,
                                      ),
                                    ),
                                  ),
                                  myList[index].batch == true
                                      ? Positioned(
                                          top: 0,
                                          right: 0,
                                          child: Container(
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              color: MyColors.primaryBlue,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: MyColors.darkGrey
                                                      .withOpacity(0.1),
                                                  offset: const Offset(0, 4),
                                                  blurRadius: 25,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                '6',
                                                style: GoogleFonts.roboto(
                                                  color: MyColors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Text(
                          textAlign: TextAlign.center,
                          myList[index].name,
                          style: MyFontStyle.captionText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

List<MyModel> myList = [
  MyModel(
    img: 'assets/icons/clinic.png',
    name: 'InClinic / Visit',
    batch: true,
  ),
  MyModel(
    img: 'assets/icons/video-call.png',
    name: 'Video Consultation',
  ),
  MyModel(
    img: 'assets/icons/report.png',
    name: 'Patient Reports',
  ),
  MyModel(
    img: 'assets/icons/wait.png',
    name: 'Patient Waiting for call',
  ),
  MyModel(
    img: 'assets/icons/perception.png',
    name: 'Write Perception',
    batch: true,
  ),
  MyModel(
    img: 'assets/icons/payment.png',
    name: 'Payments',
  ),
  MyModel(
    img: 'assets/icons/forum.png',
    name: 'Community Forum',
    batch: true,
  ),
  MyModel(
    img: 'assets/icons/unavailable.png',
    name: 'Inform Unavailability',
  ),
];

List<Widget> pages = [
  PaymentPage(),
  PaymentPage(),
  PaymentPage(),
  PaymentPage(),
  PaymentPage(),
  PaymentPage(),
  CommunityForumPage(),
  PaymentPage(),
];
