// favorite_app_bar.dart
import 'package:flutter/material.dart';
import 'package:apps_user/src/common/constants/colors.dart';  // 필요한 스타일 파일 임포트

PreferredSizeWidget CustomAppBar(BuildContext context) {
  return AppBar(
    leading: SizedBox(
      width: 200,
      height: 200,
      child: IconButton(
        color: Colors.red,
        icon: Image.asset(
          'assets/img/favorite/ic_arrow_left.png',
          width: 10.0,
          height: 20.0,
        ),
        padding: const EdgeInsets.only(left: 15),
        alignment: Alignment.centerLeft,
        onPressed: () {
          print('뒤로가기 버튼 클릭!!');
        },
      ),
    ),
    actions: <Widget>[
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(right: 20),
        child: InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/img/favorite/ic_home.png',
            width: 19.5,
            height: 20.0,
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(right: 15),
        child: InkWell(
          onTap: () {},
          child: Image.asset(
            'assets/img/favorite/ic_cart.png',
            width: 22.0,
            height: 21.0,
          ),
        ),
      ),
    ],
    flexibleSpace: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Stack(
          children: <Widget>[
            Positioned(
              top: 60,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                child: Text('찜', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        );
      },
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0),
      child: Container(color: AppColors.ffF2F0FB, height: 1.0),
    ),
  );
}
