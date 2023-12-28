import 'package:doctor_side/pages/comunity%20forum%20page/comment_card.dart';
import 'package:doctor_side/pages/comunity%20forum%20page/replies_card_widget.dart';
import 'package:doctor_side/utils/colors.dart';
import 'package:doctor_side/utils/font_styles.dart';
import 'package:flutter/material.dart';
import 'comment_card_widget.dart';
import 'comment_container_widget.dart';
import 'posts_header_widget.dart';

class CommentsDetailsPage extends StatelessWidget {
  const CommentsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        iconTheme: const IconThemeData(
          color: MyColors.darkBlue,
        ),
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text(
          'Comments',
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
              const CommentCardWidget(),
              const SizedBox(height: 10),
              Divider(color: MyColors.darkGrey.withOpacity(0.1)),
              const SizedBox(height: 16),
              const RepliesCardWidget(),
              const SizedBox(height: 16),
              const CommentContainerWidget(
                container: Padding(
                  padding: EdgeInsets.all(16),
                  child: CommentCard(
                    image: 'assets/images/pic-4.png',
                    name: 'Eleanor Pena',
                    time: '5d ago',
                    comment:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing Fringilla nunc aliquam volutpat suscipit porttitor in quis sagittis hac. Tellus sed ac libero',
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const CommentContainerWidget(
                container: Padding(
                  padding: EdgeInsets.all(16),
                  child: CommentCard(
                    image: 'assets/images/pic-5.png',
                    name: 'Dianne Russell',
                    time: '5d ago',
                    comment:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing Fringilla nunc aliquam volutpat suscipit porttitor in quis sagittis hac. Tellus sed ac libero',
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: MyColors.lightGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Padding(
                              padding: EdgeInsets.all(16),
                              child: Image(
                                image: AssetImage(
                                  'assets/icons/add-comment.png',
                                ),
                              ),
                            ),
                            hintText: 'Add Comment...',
                            hintStyle: MyFontStyle.normalText.copyWith(
                              color: MyColors.darkGrey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Image(
                    height: 24,
                    image: AssetImage(
                      'assets/icons/send.png',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
