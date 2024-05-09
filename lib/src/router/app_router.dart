import 'package:flutter/material.dart';

// tab
import 'package:apps_user/src/router/tab_item.dart';
import 'package:apps_user/src/router/bottom_navigation.dart';
import 'package:apps_user/src/router/tab_navigator.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class AppRouter extends StatefulWidget {
  const AppRouter({super.key});

  @override
  State<AppRouter> createState() => _AppRouterState();
}

class _AppRouterState extends State<AppRouter> {
  var _currentTab = TabItem.home;

  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.order: GlobalKey<NavigatorState>(),
    TabItem.favorite: GlobalKey<NavigatorState>(),
    TabItem.mypage: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // 해당 화면 이동
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 62,
        height: 62,
        decoration: BoxDecoration(
          color: AppColors.ff7C51D9,
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(1, 2),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
          border: Border.all(
            color: AppColors.ffFFFFFF,
            width: 1.0,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {
            print('press search');
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Image.asset('assets/img/navigation/ic_search.png',
              width: 27.0, height: 27.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Stack(
        children: <Widget>[
          _buildOffstageNavigator(TabItem.home),
          _buildOffstageNavigator(TabItem.order),
          _buildOffstageNavigator(TabItem.favorite),
          _buildOffstageNavigator(TabItem.mypage),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentTab: _currentTab,
        onSelectTab: _selectTab,
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
        offstage: _currentTab != tabItem,
        child: TabNavigator(
          navigatorKey: _navigatorKeys[tabItem],
          tabItem: tabItem,
        ));
  }
}
