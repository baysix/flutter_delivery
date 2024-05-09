import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class OrderTab extends StatelessWidget {
  final List<Tab> orderTabs;

  const OrderTab({super.key, required this.orderTabs});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: orderTabs.length,
      child: Column(
        children: <Widget>[
          TabBar(
            tabs: orderTabs,
            labelColor: AppColors.ff7C51D9,
            labelStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            indicatorColor: AppColors.ff7C51D9,
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
        ],
      ),
    );
  }
}
