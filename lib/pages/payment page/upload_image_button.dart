import 'dart:io';

import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageButton extends StatelessWidget {
  final String buttonText;

  const UploadImageButton({Key? key, required this.buttonText})
      : super(key: key);





  Future<void> _handleButtonTap(BuildContext context) async {
    if (buttonText == 'Upload Image') {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile =
          await picker.pickImage(source: ImageSource.gallery);

     
    } else if (buttonText == 'View Image') {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            content: Image(
              image: AssetImage(
                'assets/images/screen-shot.png',
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Color? buttonColor;
    Color? iconColor;
    Color? textColor;

    if (buttonText == 'Upload Image') {
      buttonColor = Colors.blue.withOpacity(0.1);
      iconColor = Colors.blue;
      textColor = Colors.blue;
    } else if (buttonText == 'Upload Again Image') {
      buttonColor = Colors.blue.withOpacity(0.1);
      iconColor = Colors.blue;
      textColor = Colors.blue;
    } else if (buttonText == 'Uploaded Image') {
      buttonColor = Colors.green.withOpacity(0.1);
      iconColor = Colors.green;
      textColor = Colors.green;
    } else if (buttonText == 'View Image') {
      buttonColor = Colors.orange.withOpacity(0.1);
      iconColor = Colors.orange;
      textColor = Colors.orange;
    } else {
      // Default values if the buttonText doesn't match any of the conditions
    }

    return GestureDetector(
      onTap: () => _handleButtonTap(context),
      child: Container(
        height: 34,
        width: 180,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: iconColor,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage('assets/icons/camera.png'),
                ),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              buttonText,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
