import 'package:apps_user/src/common/constants/colors.dart';
import 'package:apps_user/src/common/layout/default_layout.dart';
import 'package:apps_user/src/features/favorite/bloc/food_bloc.dart';
import 'package:apps_user/src/features/favorite/repositories/food_repository.dart';
import 'package:apps_user/src/features/favorite/widgets/customAppbar.dart';
import 'package:apps_user/src/features/favorite/widgets/food_list_wrap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// 찜
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        appBar: CustomAppBar(context),
        child: BlocProvider(
            create: (context) => FoodBloc(foodRepository: FoodRepository()),
            child: FoodListWrap())
    );
  }
}
