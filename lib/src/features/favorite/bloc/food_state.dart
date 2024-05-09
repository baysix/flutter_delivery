import 'package:apps_user/src/features/favorite/models/food.dart';

/**
 * bloc 기본 (sort 포함)
 */
// abstract class FoodState {}
//
// class FoodInitial extends FoodState {}
//
// class FoodLoading extends FoodState {}
//
// class FoodLoaded extends FoodState {
//   final List<Food> foods;
//   final String sortBy;
//   FoodLoaded(this.foods, {this.sortBy = 'default'});
// }
//
// class FoodError extends FoodState {
//   final String message;
//   FoodError(this.message);
// }


/**
 * 무한스크롤 food STate
 */
abstract class FoodState {}

class FoodInitial extends FoodState {}

class FoodLoading extends FoodState {
  final bool isFirstFetch;

  FoodLoading({this.isFirstFetch = true});
}

class FoodLoaded extends FoodState {
  final List<Food> foods;
  final String sortBy;
  final bool hasReachedMax;

  FoodLoaded({required this.foods, this.sortBy = 'default1', this.hasReachedMax = false});
}

class FoodError extends FoodState {
  final String message;

  FoodError(this.message);
}