import 'package:apps_user/src/features/favorite/favorite_screen.dart';
// screen
import 'package:apps_user/src/features/home/home_screen.dart';
import 'package:apps_user/src/features/mypage/mypage_screen.dart';
import 'package:apps_user/src/features/order/order_screen.dart';
import 'package:flutter/material.dart';

enum TabItem { home, order, favorite, mypage }

const Map<TabItem, int> tabIdx = {
  TabItem.home: 0,
  TabItem.order: 1,
  TabItem.favorite: 2,
  TabItem.mypage: 3,
};

Map<TabItem, Widget> tabScreen = {
  TabItem.home: const HomeScreen(),
  TabItem.order: const OrderScreen(),
  TabItem.favorite: const FavoriteScreen(),
  TabItem.mypage: const MyPageScreen(),
};
