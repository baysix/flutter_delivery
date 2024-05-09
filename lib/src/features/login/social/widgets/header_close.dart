import 'package:apps_user/screen/home_screen.dart';
import 'package:flutter/material.dart';

class HeaderClose extends StatelessWidget {
  const HeaderClose({super.key});

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
                      // 닫기(이전페이지)
                      InkWell(
                        onTap: () {
                          // 닫기(이전페이지) 이동
                          print('HeaderClose');
                          //Navigator.of(context).push(MaterialPageRoute(builder: (context) => const (context) => tabScreen[tabItem]));
                          //_navigatorKeys[TabItem.home]!.currentState!.popUntil((route) => route.isFirst);
                        },
                        child: Image.asset(
                          'assets/img/login/Group 198.png',
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
