// common
import 'package:apps_user/src/common/constants/colors.dart';
import 'package:apps_user/src/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

// widgets
import './widgets/header.dart';
import './widgets/search.dart';
import './widgets/type.dart';
import './widgets/category.dart';
import './widgets/event.dart';
import './widgets/review.dart';
import './widgets/promotion.dart';

// 홈
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appBar: AppBar(
        // 헤더(주소,알림,장바구니)
        title: const Header(),
        titleSpacing: 0,
        actions: [],
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.ffFFFFFF,
      ),
      child: ListView(
        children: const [
          // 검색
          Search(),

          // 주문유형
          Type(),

          // 카테고리
          Category(),

          // 이벤트
          Event(),

          // 리뷰(프로모션1)
          Review(),

          // 프로모션2
          Promotion()
        ],
      ),
    );
  }
}
