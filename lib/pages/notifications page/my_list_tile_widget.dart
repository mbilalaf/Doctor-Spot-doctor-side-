import 'package:doctor_side/models/list_tile_model.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTileWidget extends StatelessWidget {
  const MyListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: myList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Container(
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
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                tileColor: MyColors.white,
                leading: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(
                    color: myList[index].color,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      color: myList[index].borderColor,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image(
                      image: AssetImage(
                        myList[index].img,
                      ),
                    ),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      myList[index].title,
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: MyColors.darkBlue,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    myList[index].subTitle,
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

List<ListTileModel> myList = [
  ListTileModel(
    img: 'assets/icons/warning.png',
    title: 'Warning',
    subTitle:
        'The results of your test are ready, you can see the results in your electronic medical records ',
    color: MyColors.lightRed.withOpacity(0.3),
    borderColor: MyColors.lightRed,
  ),
  ListTileModel(
    img: 'assets/icons/payment.png',
    title: 'Payment',
    subTitle:
        'The results of your test are ready, you can see the results in your electronic medical records ',
    color: MyColors.primaryBlue.withOpacity(0.3),
    borderColor: MyColors.primaryBlue,
  ),
  ListTileModel(
    img: 'assets/icons/full-star.png',
    title: 'Ihmad Patient',
    subTitle:
        'Your treatment to my epilepsy is best. The medicines prescribed by you are really treating my epilepsy and is making me feel comfortable.',
    color: MyColors.primaryBlue.withOpacity(0.3),
    borderColor: MyColors.primaryBlue,
  ),
];
