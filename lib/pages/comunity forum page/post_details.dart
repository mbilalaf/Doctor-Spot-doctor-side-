import 'package:doctor_side/pages/comunity%20forum%20page/image_card_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'add_image_widget.dart';
import 'post_answer_textfield_widget.dart';
import 'post_answer_widget.dart';
import 'post_button_widget.dart';
import 'posts_header_widget.dart';

class PostDetailsPgae extends StatefulWidget {
  const PostDetailsPgae({super.key});

  @override
  State<PostDetailsPgae> createState() => _PostDetailsPgaeState();
}

class _PostDetailsPgaeState extends State<PostDetailsPgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        scrolledUnderElevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: MyColors.darkBlue,
        ),
        title: Text(
          'Forum',
          style: MyFontStyle.largeText,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
          child: Column(
            children: [
              const PostsHeaderWidget(),
              const SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sedLorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet maecenas condimentum porta quis sed praesent sed..Lorem ipsum dolor sit amet, consectetur adipiscing elit. In urna nam purus vulputate quis. Sed arcu laoreet m',
                style: MyFontStyle.captionText.copyWith(
                  fontWeight: FontWeight.w400,
                  color: MyColors.darkGrey,
                ),
              ),
              const SizedBox(height: 24),
              const Row(
                children: [
                  SizedBox(
                    height: 108,
                    width: 101,
                    child: Image(
                      image: AssetImage(
                        'assets/images/post-1.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    height: 108,
                    width: 101,
                    child: Image(
                      image: AssetImage(
                        'assets/images/post-2.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    height: 108,
                    width: 101,
                    child: Image(
                      image: AssetImage(
                        'assets/images/post-3.png',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const PostAnswerTextFieldWidget(),
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(onTap: () {}, child: const AddImageWidget()),
                  const SizedBox(width: 6),
                  const ImageCard(image: 'assets/images/post-4.png'),
                  const SizedBox(width: 6),
                  const ImageCard(image: 'assets/images/post-5.png'),
                  const SizedBox(width: 6),
                  const ImageCard(image: 'assets/images/post-6.png'),
                ],
              ),
              const SizedBox(height: 24),
              const MyButtonWidget(),
              const SizedBox(height: 24),
              const PostAnswerWidget(),
              const SizedBox(height: 12),
              Text(
                'Do not mention any kind of your personal information like phone number, payment details etc because its a violation to community guidelines',
                style: MyFontStyle.mediumText.copyWith(
                  color: MyColors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
