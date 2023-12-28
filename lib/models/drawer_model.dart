class DrawerModel {
  final String img;
  final String title;
  final String? earning;

  DrawerModel({
    required this.img,
    required this.title,
    this.earning,
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
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/settings.png',
    title: 'Setting',
  ),
  DrawerModel(
    img: 'assets/icons/drawer icons/contact-us.png',
    title: 'Contact Us',
  ),
];
