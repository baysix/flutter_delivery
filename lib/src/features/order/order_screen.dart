import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';
import 'package:apps_user/src/common/layout/default_layout.dart';

// widgets
import './widgets/customAppbar.dart';
import './widgets/order_tab.dart';
import './widgets/order_filter.dart';
import './widgets/order_search.dart';
import './widgets/order_list.dart';

final List<Tab> orderTabs = <Tab>[
  Tab(text: '과거 주문내역'),
  Tab(text: '준비중'),
];

final List<String> filterItem = ['배달', '포장', '매장예약', '테이블오더'];

// 주문내역
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  // 선택 필터 인덱스 리스트
  List<int> selectedFilterList = [];

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appBar: CustomAppBar(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 탭
          OrderTab(orderTabs: orderTabs),

          // 필터
          OrderFilter(
            selectedFilterList: selectedFilterList,
            onFilterChanged: (selectedIndex) {
              setState(() {
                selectedFilterList = selectedIndex;
              });
            },
            filters: filterItem,
          ),

          // 검색
          const OrderSearch(),

          // 목록
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OrderList(),
                ],
              ),
            ),
          ),
          // ListView(
          //   children: [OrderList()],
          // )
        ],
      ),
    );
  }
}
