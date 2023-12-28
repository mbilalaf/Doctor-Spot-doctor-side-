import 'package:doctor_side/pages/comunity%20forum%20page/all_posts_page.dart';
import 'package:doctor_side/pages/comunity%20forum%20page/comments_page.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

import '../review page/tab_bar_widget.dart';

class CommunityForumPage extends StatefulWidget {
  const CommunityForumPage({super.key});

  @override
  State<CommunityForumPage> createState() => _CommunityForumPageState();
}

class _CommunityForumPageState extends State<CommunityForumPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
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
          'Community Forum',
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
                Tab(text: 'All Posts'),
                Tab(text: 'Comments'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  AllPostsPage(),
                  CommentsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
