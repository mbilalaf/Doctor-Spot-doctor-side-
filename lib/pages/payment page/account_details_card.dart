import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountDetailsCard extends StatelessWidget {
  final String accountNo;
  final String logo;
  final String branchCode;
  final String accountTitle;
  final String? accountHolderName;
  final bool isBank;
  const AccountDetailsCard({
    super.key,
    required this.accountNo,
    required this.logo,
    required this.branchCode,
    required this.accountTitle,
    this.isBank = true,
    this.accountHolderName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: MyColors.primaryBlue.withOpacity(0.1),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: 30,
                    image: AssetImage(
                      logo,
                    ),
                  ),
                  Text(
                    isBank ? branchCode : '',
                    style: MyFontStyle.smallText.copyWith(
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
              const SizedBox(height: 10),
              isBank == false
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Account Holder Name',
                              style: MyFontStyle.smallText.copyWith(
                                color: MyColors.darkGrey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              accountHolderName ?? '',
                              style: MyFontStyle.smallText.copyWith(
                                color: MyColors.darkGrey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        DottedLine(
                            dashColor: MyColors.darkGrey.withOpacity(0.5)),
                      ],
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Account No.',
                    style: MyFontStyle.smallText.copyWith(
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        accountNo,
                        style: MyFontStyle.smallText.copyWith(
                          color: MyColors.darkGrey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Image(
                        height: 6,
                        image: AssetImage(
                          'assets/icons/link.png',
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          // Text to be copied
                          String textToCopy = accountNo;

                          // Copy text to clipboard
                          Clipboard.setData(ClipboardData(text: textToCopy));

                          // You can display a message to indicate that the text has been copied
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Account No. copied to clipboard',
                              ),
                            ),
                          );
                        },
                        child: Text(
                          'Copy',
                          style: MyFontStyle.smallText.copyWith(
                            color: MyColors.darkGrey,
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                            decorationColor: MyColors.darkGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              DottedLine(dashColor: MyColors.darkGrey.withOpacity(0.5)),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Account Title',
                    style: MyFontStyle.smallText.copyWith(
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    accountTitle,
                    style: MyFontStyle.smallText.copyWith(
                      color: MyColors.darkGrey,
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationColor: MyColors.darkGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
