import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// common
import 'package:apps_user/src/common/constants/colors.dart';

class Promotion extends StatelessWidget {
  const Promotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 14.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('리뷰 맛집',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: AppColors.ff000000,
            )),
        const SizedBox(height: 16),
        InkWell(
          onTap: () {
            print('click promotion');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 114.0,
                decoration: BoxDecoration(
                  color: AppColors.ffD9D9D9,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    '피자스쿨 구로1점',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.ff000000,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Image.asset(
                    'assets/img/home/ic_star.png',
                    width: 12.0,
                    height: 11.0,
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    '4.8(1,272)',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.ff000000,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
