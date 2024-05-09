import 'package:flutter/material.dart';

// tab
import 'package:apps_user/src/router/tab_item.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

List<BottomNavigationBarItem> selectedNavbarItems = [
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_select_home.png',
        width: 16.5,
        height: 17.0,
      ),
    ),
    label: '홈',
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_order.png',
        width: 16.0,
        height: 19.0,
      ),
    ),
    label: '주문내역',
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_select_favorite.png',
        width: 19.5,
        height: 16.5,
      ),
    ),
    label: '찜',
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_mypage.png',
        width: 21.0,
        height: 18.0,
      ),
    ),
    label: '마이페이지',
  ),
];

List<BottomNavigationBarItem> unselectedNavbarItems = [
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_unselect_home.png',
        width: 16.5,
        height: 17.0,
      ),
    ),
    label: '홈',
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_order.png',
        width: 16.0,
        height: 19.0,
      ),
    ),
    label: '주문내역',
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_unselect_favorite.png',
        width: 19.5,
        height: 16.5,
      ),
    ),
    label: '찜',
  ),
  BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Image.asset(
        'assets/img/navigation/ic_mypage.png',
        width: 21.0,
        height: 18.0,
      ),
    ),
    label: '마이페이지',
  ),
];

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.currentTab, required this.onSelectTab});

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101,
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.03),
            offset: Offset(1, -4),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          _buildItem(TabItem.home, currentTab == TabItem.home),
          _buildItem(TabItem.order, currentTab == TabItem.order),
          _buildItem(TabItem.favorite, currentTab == TabItem.favorite),
          _buildItem(TabItem.mypage, currentTab == TabItem.mypage),
        ],
        onTap: (index) => onSelectTab(
          TabItem.values[index],
        ),
        currentIndex: currentTab.index,
        selectedItemColor: AppColors.ff7C51D9,
        selectedLabelStyle:
            const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
        unselectedLabelStyle: const TextStyle(
            color: AppColors.ff9AE300,
            fontSize: 14.0,
            fontWeight: FontWeight.w500),
        backgroundColor: AppColors.ffFFFFFF,
      ),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem, bool isSelected) {
    final itemIndex = tabIdx[tabItem]!;
    final item = isSelected
        ? selectedNavbarItems[itemIndex]
        : unselectedNavbarItems[itemIndex];

    return BottomNavigationBarItem(
      icon: item.icon,
      label: item.label,
    );
  }
}
