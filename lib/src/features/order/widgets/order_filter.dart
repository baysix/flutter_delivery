import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

// widgets
import './order_filter_button.dart';

class OrderFilter extends StatelessWidget {
  final List<String> filters;
  final List<int> selectedFilterList;
  final ValueChanged<List<int>> onFilterChanged;

  const OrderFilter({
    required this.filters,
    required this.selectedFilterList,
    required this.onFilterChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 10, 0, 9),
      child: Row(
        children: List.generate(
          filters.length,
          (index) => FilterButton(
            text: filters[index],
            isSelected: selectedFilterList.contains(index),
            onPressed: () {
              List<int> updatedIndex = List.from(selectedFilterList);

              if (updatedIndex.contains(index)) {
                updatedIndex.remove(index);
              } else {
                updatedIndex.add(index);
              }
              onFilterChanged(updatedIndex);
            },
          ),
        ),
      ),
    );
  }
}
