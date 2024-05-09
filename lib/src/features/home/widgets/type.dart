import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class TypeInfo {
  final String imagePath;
  final String label;
  final double width;
  final double height;
  final double divide;

  TypeInfo({
    required this.imagePath,
    required this.label,
    this.width = 55.0,
    this.height = 55.0,
    this.divide = 10.0,
  });
}

class Type extends StatelessWidget {
  const Type({super.key});

  @override
  Widget build(BuildContext context) {
    final typeItem = [
      TypeInfo(
          imagePath: 'assets/img/home/ic_pickup.png',
          label: '픽업',
          width: 67.0,
          height: 63.0,
          divide: 10.0),
      TypeInfo(
          imagePath: 'assets/img/home/ic_reserve.png',
          label: '예약',
          width: 54.0,
          height: 57.56,
          divide: 15.0),
      TypeInfo(
          imagePath: 'assets/img/home/ic_table.png',
          label: '테이블오더',
          width: 67.0,
          height: 63.0,
          divide: 13.0),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: typeItem.map((item) {
          return InkWell(
            onTap: () {
              // 검색
              print('click ${item.label}');
            },
            child: Container(
              width: 114,
              height: 114,
              decoration: BoxDecoration(
                color: AppColors.ffFFFFFF,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    offset: Offset(1, 1),
                    blurRadius: 4,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            item.label,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.ff000000),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: item.divide,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Image.asset(
                          item.imagePath,
                          width: item.width,
                          height: item.height,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
