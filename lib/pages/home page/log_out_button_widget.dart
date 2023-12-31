import 'package:doctor_side/pages/home%20page/log_out_buttons.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogOutButtonWidget extends StatelessWidget {
  const LogOutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: GestureDetector(
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
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: MyColors.primaryBlue.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Image(
                            color: MyColors.primaryBlue,
                            image: AssetImage(
                              'assets/icons/log-out.png',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Divider(),
                      const SizedBox(height: 15),
                      Text(
                        textAlign: TextAlign.center,
                        'Are you sure you want to\nLog Out',
                        style: MyFontStyle.mediumText.copyWith(
                          color: MyColors.black,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        textAlign: TextAlign.center,
                        'your account will be still appear in appointment list turn off availability if you do not want to attend patient of doctorspot app',
                        style: MyFontStyle.captionText.copyWith(
                          fontWeight: FontWeight.w500,
                          color: MyColors.red,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          LogOutButtons(
                            btnText: 'Cancel',
                            isBorder: true,
                          ),
                          SizedBox(width: 18),
                          LogOutButtons(
                            btnText: 'Yes',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          height: 48,
          width: 148,
          decoration: BoxDecoration(
            color: MyColors.primaryBlue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                height: 20,
                image: AssetImage(
                  'assets/icons/log-out.png',
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Log Out',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: MyColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
