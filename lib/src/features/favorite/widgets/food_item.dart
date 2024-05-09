

import 'package:apps_user/src/common/constants/colors.dart';
import 'package:apps_user/src/features/favorite/models/food.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final Food food;

  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 0,
      color: Colors.transparent,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                food.image,
                width: 120.0,
                height: 120.0,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food.name,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w700),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/img/favorite/ic_star.png',
                                    width: 12.0,
                                    height: 11.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 3.0),
                                    child: Text(
                                      '${food.rating}(${food.review})',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          Flexible(
                            child: Text(
                              food.deliveryTime,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.ff868687,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Text(
                              food.deliveryFee,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.ff868687,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              food.minOrderPrice,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: AppColors.ff868687,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (String title in food.tags) // 리스트를 순회하며 위젯 생성
                              Container(
                                margin: EdgeInsets.only(
                                  right:4.0
                                ),
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 4.0,
                                  bottom: 4.0,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.ffC5C5C5,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                alignment: Alignment.center,
                                child: Text(title,
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            for (String title in food.coupons) // 리스트를 순회하며 위젯 생성
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 2.0,
                                  bottom: 2.0,
                                ),
                                margin: EdgeInsets.only(right: 2.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.ffE3CEEF, // AppColors.greyColor400는 정의된 색상 변수입니다.
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                    color: AppColors.ffE3CEEF
                                ),
                                alignment: Alignment.center,
                                child: Text(title,
                                    style: TextStyle(
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -1.5
                                    )),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}