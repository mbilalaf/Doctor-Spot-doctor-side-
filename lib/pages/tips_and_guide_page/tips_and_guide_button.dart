import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

// model and list is below the class

// ignore: must_be_immutable
class TipsAndGuideButton extends StatefulWidget {
  bool isActive;
  TipsAndGuideButton({
    super.key,
    this.isActive = false,
  });

  @override
  State<TipsAndGuideButton> createState() => _TipsAndGuideButtonState();
}

class _TipsAndGuideButtonState extends State<TipsAndGuideButton> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: buttonList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool isActive = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color:
                      isActive == true ? MyColors.primaryBlue : MyColors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: widget.isActive == true
                        ? Colors.transparent
                        : MyColors.darkGrey.withOpacity(0.1),
                  ),
                ),
                child: Card(
                  elevation: 0,
                  color:
                      isActive == true ? MyColors.primaryBlue : MyColors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      buttonList[index].btnText,
                      style: MyFontStyle.smallText.copyWith(
                        color: isActive == true
                            ? MyColors.white
                            : MyColors.primaryBlue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ButtonsModel {
  final String btnText;

  ButtonsModel({
    required this.btnText,
  });
}

List<ButtonsModel> buttonList = [
  ButtonsModel(btnText: 'In Clinic/Hospital'),
  ButtonsModel(btnText: 'Video Consultration'),
  ButtonsModel(btnText: 'Reports'),
  ButtonsModel(btnText: 'Payments'),
];
