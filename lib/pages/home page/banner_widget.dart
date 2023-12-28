import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'date_time_button_widget.dart';
import 'my_button_widget.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Image(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/banner.png',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(
                        'assets/images/profile.png',
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Esther Howard',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: MyColors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            'Bhimbar road near Gujrat Hospital In Clinic / Visit ',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: MyColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    DateTimeButtonWidget(
                      img: 'assets/icons/calender.png',
                      text: 'Sep 10, 2023',
                    ),
                    SizedBox(width: 8),
                    DateTimeButtonWidget(
                      img: 'assets/icons/time.png',
                      text: '05:00 PM',
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButtonWidget(
                      btnText: 'Reshedule',
                    ),
                    SizedBox(width: 6),
                    MyButtonWidget(
                      btnText: 'Reject',
                    ),
                    SizedBox(width: 6),
                    MyButtonWidget(
                      btnText: 'Accept',
                      border: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
