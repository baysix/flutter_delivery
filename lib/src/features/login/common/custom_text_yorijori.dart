import 'package:flutter/material.dart';

class TitleYorijori extends StatelessWidget {
  const TitleYorijori({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      '요리조리',
      style: TextStyle(
          fontFamily: 'AppleSDGothicNeoH00',
          fontWeight: FontWeight.w400,
          fontSize: 40,
          color: Colors.black
      ),
    );
  }
}
