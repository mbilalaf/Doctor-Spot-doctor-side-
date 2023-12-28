import 'package:doctor_side/pages/home%20page/banner_widget.dart';
import 'package:doctor_side/pages/home%20page/chat_widget.dart';
import 'package:doctor_side/pages/home%20page/log_out_button_widget.dart';
import 'package:doctor_side/pages/home%20page/my_button.dart';
import 'package:doctor_side/pages/home%20page/my_card_widget.dart';
import 'package:doctor_side/pages/home%20page/my_list_tile_widget.dart';
import 'package:doctor_side/pages/home%20page/profile_widget.dart';
import 'package:doctor_side/pages/notifications%20page/notification_page.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'notification_widget.dart';
import 'rating_card_widget.dart';
import 'title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              padding: const EdgeInsets.only(left: 22),
              child: const Image(
                image: AssetImage(
                  'assets/icons/menu.png',
                ),
              ),
            ),
          );
        }),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(const NotificationPage());
            },
            child: const NotificationWidget(),
          ),
        ],
        title: const TitleWidget(),
      ),
      drawer: Drawer(
        backgroundColor: MyColors.white,
        surfaceTintColor: MyColors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/drawer-cover.png',
                    ),
                  ),
                ),
                child: const ProfileWidget(),
              ),
              const MyListTile(),
              const LogOutButtonWidget(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
          child: Column(
            children: [
              const RatingCardWidget(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcomming Appointment',
                    style: MyFontStyle.titleText.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '1/10',
                    style: MyFontStyle.captionText.copyWith(
                      fontWeight: FontWeight.w600,
                      color: MyColors.primaryBlue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const BannerWidget(),
              const SizedBox(height: 20),
              const MyCardWidget(),
              const SizedBox(height: 16),
              const ChatWidget(),
              const SizedBox(height: 24),
              const MyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
