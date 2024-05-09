import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

import '../../social/login_social_screen.dart';

class HeaderBack extends StatelessWidget {
  const HeaderBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(14.0, 16.0, 14.0, 35.92),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      // 뒤로가기
                      InkWell(
                        onTap: () {
                          // 뒤로가기 이동
                          print('click back');
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginSocialScreen()));
                        },
                        child: Image.asset(
                          'assets/img/login/ic_back.png',
                          width: 18.0,
                          height: 21.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
