import 'package:apps_user/src/features/favorite/bloc/food_bloc.dart';
import 'package:apps_user/src/features/favorite/bloc/food_event.dart';
import 'package:apps_user/src/features/favorite/bloc/food_state.dart';
import 'package:apps_user/src/features/favorite/widgets/customAppbar.dart';
import 'package:apps_user/src/features/favorite/widgets/food_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//
// class FoodList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //
//     return Scaffold(
//       body: BlocBuilder<FoodBloc, FoodState>(
//         builder: (context, state) {
//           if (state is FoodLoading) {
//             return Center(child: CircularProgressIndicator());
//           } else if (state is FoodLoaded) {
//             return ListView.builder(
//               itemCount: state.foods.length,
//               itemBuilder: (context, index) {
//                 return FoodItem(food: state.foods[index]);  // 각 음식 아이템 위젯을 생성합니다.
//               },
//             );
//           } else if (state is FoodError) {
//             return Center(child: Text(state.message));
//           }
//           return Center(child: Text("Start loading foods..."));
//         },
//       ),
//     );
//   }
// }

/**
 * 무한스크롤 인디게이터 테스트 코드
 */
class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  final ScrollController _scrollController = ScrollController();
  int currentPage = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    // context.read<FoodBloc>().add(LoadFoods(pageNum: currentPage));
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      if (context.read<FoodBloc>().state is FoodLoaded) {
        final currentState = context.read<FoodBloc>().state as FoodLoaded;
        if (!currentState.hasReachedMax) {
          currentPage++;
          context.read<FoodBloc>().add(LoadFoods(sortBy: currentState.sortBy, pageNum: currentPage));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          if (state is FoodLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is FoodLoaded) {
            return ListView.builder(
              controller: _scrollController,
              itemCount: state.foods.length + (state.hasReachedMax ? 0 : 1),
              itemBuilder: (BuildContext context, int index) {
                if (index >= state.foods.length) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Image.asset(
                        'assets/img/favorite/ic_food_loading.png'
                    )),
                  );
                }
                return FoodItem(food: state.foods[index]);  // 각 음식 아이템 위젯을 생성합니다.
              },
            );
          } else if (state is FoodError) {
            return Center(child: Text(state.message));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}



