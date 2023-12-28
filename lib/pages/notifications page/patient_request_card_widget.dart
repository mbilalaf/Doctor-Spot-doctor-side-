import 'package:doctor_side/models/request_model.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card_button_widget.dart';

class PatientRequestCardWidget extends StatelessWidget {
  const PatientRequestCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: MyColors.black.withOpacity(0.05),
                  offset: const Offset(0, 7),
                  blurRadius: 23,
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 16, bottom: 16, right: 8, left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(
                              myList[index].img,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    myList[index].name,
                                    style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: MyColors.darkBlue,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Text(
                                myList[index].hosptitalName,
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: MyColors.darkGrey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  Text(
                                    'Payment : ',
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      color: MyColors.darkGrey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    myList[index].payment,
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      color: myList[index].paid == true
                                          ? MyColors.green
                                          : MyColors.red,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '5 min ago.',
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              color: MyColors.primaryBlue,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CardButtonWidget(name: 'Reschedule'),
                      SizedBox(width: 4),
                      CardButtonWidget(name: 'Reject'),
                      SizedBox(width: 4),
                      CardButtonWidget(
                        name: 'Accept',
                        border: false,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

List<RequestModel> myList = [
  RequestModel(
    img: 'assets/images/profile.png',
    name: 'Theresa Webb',
    hosptitalName: 'Bhimbar road near Gujrat Hospital',
    payment: '2000 Paid',
    paid: true,
  ),
  RequestModel(
    img: 'assets/images/profile-2.png',
    name: 'Kathryn Murphy',
    hosptitalName: 'Bhimbar road near Gujrat Hospital',
    payment: '2000 Unpaid',
    paid: false,
  ),
];
