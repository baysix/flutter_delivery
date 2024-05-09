import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

// widgets
import './order_item.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            20,
                (index) {
              return const OrderItem();
            },
          ),
        ),
      ),
    );
  }
}
