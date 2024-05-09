import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: AppColors.ff888888,
            width: 1.0,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '교촌치킨',
                          hintStyle: TextStyle(color: AppColors.ff888888)),
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
