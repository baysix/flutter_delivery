import 'package:apps_user/src/common/constants/colors.dart';
import 'package:apps_user/src/features/favorite/bloc/food_bloc.dart';
import 'package:apps_user/src/features/favorite/bloc/food_event.dart';
import 'package:apps_user/src/features/favorite/bloc/food_state.dart';
import 'package:apps_user/src/features/favorite/widgets/food_list.dart';
import 'package:apps_user/src/features/favorite/models/food.dart';
import 'package:apps_user/src/features/favorite/repositories/food_repository.dart';
import 'package:apps_user/src/features/favorite/widgets/customAppbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodListWrap extends StatefulWidget {
  const FoodListWrap({super.key});

  @override
  State<FoodListWrap> createState() => _FoodListState();
}

class _FoodListState extends State<FoodListWrap> {
  List<String> sortOptions = ['자주 주문한 순', '후기 많은 순', '별점 높은 순'];
  String selectedSort = '자주 주문한 순';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FoodBloc>().add(LoadFoods(sortBy: selectedSort, pageNum: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: Column(
          children: [
            BlocBuilder<FoodBloc, FoodState>(
              builder: (context, state) {
                int itemCount = 0; // 기본값 설정
                if (state is FoodLoaded) {
                  itemCount = state.foods.length; // 로드된 상태에서 항목 수 업데이트
                }
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '총 $itemCount개',
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
                      ),
                      DropdownButton<String>(
                        value: selectedSort,
                        icon: Row(
                          children: [
                            SizedBox(width: 5),
                            Image.asset(
                              'assets/img/favorite/ic_arrow_down.png',
                              width: 12.0,
                              height: 12.0,
                            ),
                          ],
                        ),
                        underline: Container(
                          height: 0,
                        ),
                        onChanged: (String? newValue) {
                          if (newValue != null && newValue != selectedSort) {
                            setState(() {
                              selectedSort = newValue;
                            });
                            // 정렬 기준 변경 시 첫 페이지부터 다시 로드
                            context.read<FoodBloc>().add(LoadFoods(sortBy: newValue, pageNum: 1));
                          }
                        },
                        items: sortOptions.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                );
              }
            ),
            Expanded(
                child: FoodList(),
            ),
          ],
        ),
      ),
    );
  }
}