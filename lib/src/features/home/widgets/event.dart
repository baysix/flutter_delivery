import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 14.0),
      child: InkWell(
        onTap: () {
          print('click event');
        },
        child: Container(
          height: 114.0,
          decoration: BoxDecoration(
            color: AppColors.ffD9D9D9,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

