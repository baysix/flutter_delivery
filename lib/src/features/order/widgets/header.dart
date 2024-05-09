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
                        Image.asset(
                          'assets/img/order/ic_arrow_left.png',
                          width: 10.0,
                          height: 20.0,
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              '주문내역',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                color: AppColors.ff000000,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // 여기에 텍스트 추가('ㅇㅇㅇ') <- 가운데 정렬
                Row(
                  children: [
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
              ],
            ),
          ],
        ));
  }
}
