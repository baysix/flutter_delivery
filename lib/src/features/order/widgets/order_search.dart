import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class OrderSearch extends StatelessWidget {
  const OrderSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: AppColors.ffC5C5C5,
            width: 0.5,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // 수직 가운데 정렬
                children: [
                  InkWell(
                    onTap: () {
                      // 검색
                      print('click search');
                    },
                    child: SvgPicture.asset(
                      'assets/img/home/ic_search.svg',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  SizedBox(width: 9.0),
                  Expanded(
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '주문했던 메뉴와 가게를 검색해보세요',
                        hintStyle: TextStyle(color: AppColors.ff888888),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
