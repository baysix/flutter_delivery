import 'package:apps_user/src/common/constants/colors.dart';
import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class DefaultLayout extends StatelessWidget {

  final Widget child;
  final PreferredSizeWidget? appBar;

  const DefaultLayout({
    required this.child,
    this.appBar,
    Key? key,
  }) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ffFFFFFF,
      appBar: appBar,
      body: child,
    );
  }

}




