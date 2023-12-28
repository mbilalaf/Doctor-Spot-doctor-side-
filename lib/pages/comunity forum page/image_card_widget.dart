import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  const ImageCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Image(
        image: AssetImage(
          image,
        ),
      ),
    );
  }
}
