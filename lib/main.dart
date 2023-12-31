import 'package:doctor_side/controllers/tab_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  TbaBarController controller = Get.put(TbaBarController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Doctor Side',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
