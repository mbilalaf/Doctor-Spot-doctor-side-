import 'package:doctor_side/pages/payment%20page/my_button.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WithdrawFundsPage extends StatelessWidget {
  const WithdrawFundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: MyColors.darkBlue,
        ),
        centerTitle: true,
        title: Text(
          'Withdraw Funds',
          style: MyFontStyle.largeText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        child: Column(
          children: [
            Container(
              height: 162,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: MyColors.purple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Total remaining amount.',
                    style: MyFontStyle.mediumText.copyWith(
                      color: MyColors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Rs 45,000',
                    style: MyFontStyle.largeText.copyWith(
                      color: MyColors.white,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            MyButton(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      surfaceTintColor: MyColors.white,
                      backgroundColor: MyColors.white,
                      content: SizedBox(
                        height: 340,
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage(
                                'assets/icons/decoration.png',
                              ),
                            ),
                            const Image(
                              height: 115,
                              image: AssetImage(
                                'assets/icons/timer.png',
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'Withdraw',
                              style: MyFontStyle.titleText,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              textAlign: TextAlign.center,
                              'We will Transfer your requested pending payment within 7 days',
                              style: MyFontStyle.captionText.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 30),
                            MyButton(
                              text: 'Ok',
                              onTap: () {
                                Get.back();
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              text: 'Submit',
            ),
          ],
        ),
      ),
    );
  }
}
