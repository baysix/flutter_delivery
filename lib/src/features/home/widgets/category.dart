import 'package:apps_user/src/features/login/social/login_social_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

import '../../../router/app_router.dart';

class CategoryInfo {
  final String imagePath;
  final String label;
  final double width;
  final double height;

  CategoryInfo({
    required this.imagePath,
    required this.label,
    this.width = 55.0,
    this.height = 55.0,
  });
}

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryItem = [
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_1.png',
          label: '족발・보쌈',
          width: 47.0,
          height: 28.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_2.png',
          label: '일식',
          width: 38.0,
          height: 27.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_3.png',
          label: '피자',
          width: 45.0,
          height: 33.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_4.png',
          label: '중식',
          width: 44.0,
          height: 34.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_5.png',
          label: '치킨',
          width: 24.0,
          height: 36.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_6.png',
          label: '버거',
          width: 38.0,
          height: 32.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_7.png',
          label: '분식',
          width: 38.0,
          height: 40.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_8.png',
          label: '돈까스',
          width: 46.0,
          height: 34.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_9.png',
          label: '디저트',
          width: 37.0,
          height: 36.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_10.png',
          label: '아시안',
          width: 38.0,
          height: 32.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_11.png',
          label: '고기・구이',
          width: 46.0,
          height: 29.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_12.png',
          label: '양식',
          width: 37.0,
          height: 33.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_13.png',
          label: '한식',
          width: 40.0,
          height: 32.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_14.png',
          label: '찜・탕',
          width: 47.0,
          height: 33.0),
    ];

    // 타이틀
    final List<Widget> renderTitle = [
      const Text(
        '요리조리 딜리버리',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: AppColors.ff000000,
        ),
      ),
      const SizedBox(height: 16),
    ];

    // 아이템
    final List<Widget> renderItem = categoryItem.map((item) {
      return InkWell(
        onTap: () {
          // 검색
          print('click ${item.label}');
        },
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.ffF9F9F9,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.13),
                    offset: Offset(0, 0),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
                // border: Border.all(
                //   color: AppColors.ffF9F9F9,
                //   width: 1,
                // ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    item.imagePath,
                    width: item.width,
                    height: item.height,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Text(
              item.label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.ff000000,
              ),
            )
          ],
        ),
      );
    }).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14.0),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...renderTitle,
                  Center(
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 14,
                      alignment: WrapAlignment.start,
                      children: renderItem,
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

