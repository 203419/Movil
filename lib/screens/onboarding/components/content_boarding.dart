import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    super.key,
    this.title,
    this.text,
    this.image,
  });

  final String? title, text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Image.asset(
            image!,
            width: 250,
            height: 250,
          ),
        ),
        // Title
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Text(
            title!,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xff4F1581),
            ),
          ),
        ),
        // Text
        Container(
          margin: const EdgeInsets.all(20),
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
