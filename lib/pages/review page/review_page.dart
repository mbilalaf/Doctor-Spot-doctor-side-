import 'package:flutter/material.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'negative_reviews_page.dart';
import 'pending_reviews_page.dart';
import 'positive_reviews_page.dart';
import 'tab_bar_widget.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 1);
    super.initState();
  }

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
            Tabbarwidget(
              tabController: tabController,
              tabs: const [
                Tab(text: 'Positive'),
                Tab(text: 'Negative'),
                Tab(text: 'Pending'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  PositiveReviewsPage(),
                  NegativeReviewsPage(),
                  PendingReviewsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
