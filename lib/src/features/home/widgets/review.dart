import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

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

class Review extends StatelessWidget {
  const Review({super.key});

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
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_1.png',
          label: '로그인',
          width: 38.0,
          height: 32.0),
      CategoryInfo(
          imagePath: 'assets/img/home/ic_category_2.png',
          label: '추가1',
          width: 38.0,
          height: 32.0),

    ];

    // 타이틀
    final List<Widget> renderTitle = [
      const Text(
        '리뷰 맛집',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColors.ffD9D9D9,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.13),
                    offset: Offset(0, 0),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ],
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
            const SizedBox(height: 8),
            const Text(
              '피자스쿨 구로1점',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.ff000000,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Image.asset(
                  'assets/img/home/ic_star.png',
                  width: 12.0,
                  height: 11.0,
                ),
                const SizedBox(width: 4),
                const Text(
                  '4.8(1,272)',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.ff000000,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 1),
            const Text(
              '40분~ 배달비 3,000원',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.ff868687,
              ),
            ),
          ],
        ),
      );
    }).toList();

    return Padding(
      padding: const EdgeInsets.fromLTRB(14.0, 15.0, 0, 15.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...renderTitle,
                Center(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enableInfiniteScroll: false,
                      enlargeCenterPage: false,
                      autoPlay: false,
                      padEnds: false,
                      viewportFraction: 0.4,
                    ),
                    items: renderItem.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: item,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
