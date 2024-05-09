import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(14.0, 16.0, 14.0, 35.92),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 주소
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/img/home/ic_pin.svg',
                          width: 12.96,
                          height: 18.99,
                        ),
                        // 주소 텍스트
                        const SizedBox(width: 10.04),
                        const Text(
                          '디지털로33길 27',
                          style: TextStyle(
                            color: AppColors.ff000000,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 12),
                        InkWell(
                          onTap: () {
                            // 주소 설정
                            print('press address');
                          },
                          child: Image.asset(
                            'assets/img/home/ic_arrow_down.png',
                            width: 12.0,
                            height: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      // 알림
                      InkWell(
                        onTap: () {
                          // 알림 화면 이동
                          print('press alarm');
                        },
                        child: Image.asset(
                          'assets/img/home/ic_alarm.png',
                          width: 18.0,
                          height: 21.0,
                        ),
                      ),
                      const SizedBox(width: 21.0),
                      // 장바구니
                      InkWell(
                        onTap: () {
                          print('press cart');
                        },
                        child: Image.asset(
                          'assets/img/home/ic_cart.png',
                          width: 22.0,
                          height: 21.08,
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
