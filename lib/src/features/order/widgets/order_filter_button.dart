import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const FilterButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(right: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.ff7C51D9 : AppColors.ffFFFFFF,
          borderRadius: BorderRadius.circular(22.0),
          border: Border.all(
            color: isSelected ? AppColors.ff7C51D9 : AppColors.ffC5C5C5,
            width: 0.5,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? AppColors.ffFFFFFF : AppColors.ff000000,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
