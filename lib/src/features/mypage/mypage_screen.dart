import 'package:flutter/material.dart';

import 'package:apps_user/src/features/favorite/widgets/customAppbar.dart';

// 마이페이지
class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(context),
        body: Center(
          child: Text('마이페이지'),
        ));
  }
}
