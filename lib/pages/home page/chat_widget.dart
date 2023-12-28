import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Inform if you are Unavailable.',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.w600,
            color: MyColors.red,
            fontSize: 12,
            decoration: TextDecoration.underline,
            decorationColor: MyColors.red,
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.1),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: MyColors.primaryBlue.withOpacity(0.2),
              width: 2.5,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: MyColors.primaryBlue,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Padding(
                padding: EdgeInsets.all(6.0),
                child: Image(
                  image: AssetImage(
                    'assets/icons/chat.png',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
