import 'package:doctor_side/pages/agreement_and_work_policy_page/agreement_and_work_policy_page.dart';
import 'package:doctor_side/pages/contact_us_page/contact_us_page.dart';
import 'package:doctor_side/pages/tips_and_guide_page/tips_and_guide_page.dart';
import 'package:doctor_side/pages/settings_page/settings_page.dart';
import 'package:get/get.dart';

class DrawerModel {
  final String img;
  final String title;
  final String? earning;
  final void Function()? onTap;

  DrawerModel({
    required this.img,
    required this.title,
    this.earning,
    this.onTap,
  });
}

List<DrawerModel> myList = [
  DrawerModel(
    img: 'assets/icons/drawer icons/my-profile.png',
    title: 'My Profile',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/earnings.png',
    title: 'Your Earning',
    earning: '( Rs 15,000 )',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/notifications.png',
    title: 'Notifications',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/accounts.png',
    title: 'Accounts',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/calender.png',
    title: 'Book Appointment',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/ranking.png',
    title: 'Improve ranking',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/suggestion.png',
    title: 'Complaints / Suggestion',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/policy.png',
    title: 'Agreement & Work Policy',
    onTap: () {
      Get.to(const AgreementAndWorkPolicyPage());
    },
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/steps.png',
    title: 'Promotions',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/update.png',
    title: 'Update Timing',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/tips.png',
    title: 'Tips and Guide',
    onTap: () {
      Get.to(const TipsAndGuidePage());
    },
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/settings.png',
    title: 'Setting',
    onTap: () {
      Get.to(const SettingsPage());
    },
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/contact-us.png',
    title: 'Contact Us',
    onTap: () {
      Get.to(const ContactUsPage());
    },
  ),
];
