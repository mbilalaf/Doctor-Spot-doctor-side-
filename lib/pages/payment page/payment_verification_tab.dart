import 'package:doctor_side/pages/payment%20page/payment_pending_header.dart';
import 'package:doctor_side/pages/payment%20page/payment_pending_widget.dart';
import 'package:doctor_side/pages/payment%20page/upload_image_button.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class PaymentVerificationTab extends StatelessWidget {
  const PaymentVerificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'October 15,2023',
                style: MyFontStyle.mediumText.copyWith(
                  color: MyColors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 24),
              const PaymentPendingWidget(
                header: PaymentPendingHeader(
                  date: '01 june, 30 June',
                  subtitle: 'Paid us overdue amount and upload screenshot',
                  ammount: '-200',
                ),
                button: UploadImageButton(buttonText: 'Upload Image'),
                warning: 'Request for overdue payment RS 200.',
              ),
              const SizedBox(height: 24),
              const PaymentPendingWidget(
                header: PaymentPendingHeader(
                  date: '01 june, 30 June',
                  subtitle: 'Paid us overdue amount and upload screenshot',
                  ammount: '-200',
                ),
                button: UploadImageButton(buttonText: 'Upload Again Image'),
                warning:
                    'Mistakenly you uploaded wrong receipt, Doctorspot team has been rejected the payment receipt, Kindly upload the correct receipt.',
              ),
              const SizedBox(height: 24),
              const PaymentPendingWidget(
                header: PaymentPendingHeader(
                  date: '01 june, 30 June',
                  subtitle: 'Paid us overdue amount and upload screenshot',
                  ammount: '-200',
                  isCleared: true,
                ),
                button: UploadImageButton(buttonText: 'Uploaded Image'),
                warning: 'Your payment has been Verified RS 200.',
                isWarning: false,
              ),
              const SizedBox(height: 24),
              const PaymentPendingWidget(
                header: PaymentPendingHeader(
                  date: '01 june, 30 June',
                  subtitle: 'Paid us overdue amount and upload screenshot',
                  ammount: '+2000',
                  isCleared: true,
                ),
                button: UploadImageButton(buttonText: 'View Image'),
                isWarning: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
