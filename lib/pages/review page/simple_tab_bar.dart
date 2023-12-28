import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  final Widget tab1Content;
  final Widget tab2Content;

  const MyTabBar(
      {Key? key, required this.tab1Content, required this.tab2Content})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            InkWell(
              onTap: () {
                _tabController.animateTo(0);
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: const Tab(
                text: 'In Clinic / Visit',
              ),
            ),
            InkWell(
              onTap: () {
                _tabController.animateTo(1);
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: const Tab(
                text: 'Video Consultation',
              ),
            ),
          ],
          dividerColor: Colors.transparent,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: MyColors.primaryBlue,
                width: 2.0,
              ),
            ),
          ),
          labelStyle: MyFontStyle.smallText,
          labelColor: MyColors.primaryBlue,
          unselectedLabelColor: MyColors.darkGrey,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              widget.tab1Content,
              widget.tab2Content,
            ],
          ),
        ),
      ],
    );
  }
}
