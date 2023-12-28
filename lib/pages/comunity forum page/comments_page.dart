import 'package:doctor_side/pages/comunity%20forum%20page/comments_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:flutter/material.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 24, bottom: 12),
          child: Column(
            children: [
              CommentsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
