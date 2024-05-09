import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';
import 'package:flutter/widgets.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  // 구분선
  Widget _buildDivideLine() {
    return Container(
      height: 8.0,
      color: AppColors.ffE6E6E6,
    );
  }

  // 헤더(시간, 상태)
  Widget _buildContentHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '2024-03-26 오전 10:50',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: AppColors.ff868687,
          ),
        ),
        Text(
          '배달완료',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: AppColors.ff868687,
          ),
        ),
      ],
    );
  }

  // 메뉴 이미지, 주문 정보
  Widget _buildContentInfo() {
    return Padding(
      padding: EdgeInsets.only(top: 15.0),
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/order/ic_menu.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: AppColors.ff7C51D9,
                      borderRadius: BorderRadius.circular(22.0),
                      border: Border.all(
                        color: AppColors.ffFFFFFF,
                        width: 3.0,
                      ),
                    ),
                    child: const Text(
                      '배달',
                      style: TextStyle(
                        color: AppColors.ffFFFFFF,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Image.asset(
          //   'assets/img/order/ic_menu.png',
          //   width: 120.0,
          //   height: 120.0,
          // ),
          const SizedBox(width: 15.0),
          Expanded(
            child: Container(
              height: 120.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '동궁찜닭 경기광명철산점',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.ff26303D,
                    ),
                  ),
                  const Text(
                    '-매운 찜닭(소) 외 2개',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.ff888888,
                    ),
                  ),
                  const Text(
                    '합계: 25,000원',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: AppColors.ff26303D,
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("재주문");
                        },
                        child: Container(

                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 33.0),
                          decoration: BoxDecoration(
                            color: AppColors.ffFFFFFF,
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                              color: AppColors.ff7C51D9,
                              width: 1.0,
                            ),
                          ),
                          child: const Text(
                            '재주문',
                            style: TextStyle(
                              color: AppColors.ff7C51D9,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("상세보기");
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 8.0),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 33.0),
                          decoration: BoxDecoration(
                            color: AppColors.ffFFFFFF,
                            borderRadius: BorderRadius.circular(4.0),
                            border: Border.all(
                              color: AppColors.ffC5C5C5,
                              width: 1.0,
                            ),
                          ),
                          child: const Text(
                            '상세보기',
                            style: TextStyle(
                              color: AppColors.ff26303D,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 컨텐츠
  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14.0, 22.0, 14.0, 20.0),
      child: Column(
        children: [_buildContentHeader(), _buildContentInfo()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 구분선
        _buildDivideLine(),

        // 컨텐츠
        _buildContent(),
      ],
    );
  }
}
