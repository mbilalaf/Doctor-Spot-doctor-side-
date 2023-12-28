import 'package:doctor_side/models/drawer_model.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: ListTile(
            leading: Image(
              height: 16,
              image: AssetImage(
                myList[index].img,
              ),
            ),
            title: Row(
              children: [
                Text(
                  myList[index].title,
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: MyColors.darkBlue,
                  ),
                ),
                index == 1
                    ? Text(
                        myList[index].earning.toString(),
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: MyColors.primaryBlue,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        );
      },
    );
  }
}
