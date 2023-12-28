import 'package:doctor_side/pages/comunity%20forum%20page/posts_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';

class AllPostsPage extends StatelessWidget {
  const AllPostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 24, bottom: 12),
          child: Column(
            children: [
              PostsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
