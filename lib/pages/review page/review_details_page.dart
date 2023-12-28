import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

import 'review_header_widget.dart';

class ReviewDetailsPage extends StatelessWidget {
  const ReviewDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(
          color: MyColors.darkBlue,
        ),
        centerTitle: true,
        title: Text(
          'Review',
          style: MyFontStyle.largeText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
        child: Column(
          children: [
            Column(
              children: [
                const ReviewHeaderWidget(),
                const SizedBox(height: 24),
                Text(
                  '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"',
                  style: MyFontStyle.captionText.copyWith(
                    color: MyColors.darkGrey,
                    height: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 22, right: 22, bottom: 24),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: MyColors.lightGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(16),
                        child: Image(
                          image: AssetImage(
                            'assets/icons/add-comment.png',
                          ),
                        ),
                      ),
                      hintText: 'Add Comment...',
                      hintStyle: MyFontStyle.normalText.copyWith(
                        color: MyColors.darkGrey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Image(
              height: 24,
              image: AssetImage(
                'assets/icons/send.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
