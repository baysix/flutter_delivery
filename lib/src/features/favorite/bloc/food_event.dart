/**
 * food_evnt 기본 테스트 코드 (sort 포함)
 */
// food_event.dart
// abstract class FoodEvent {}
//
// class LoadFoods extends FoodEvent {
//   final String sortBy;
//
//   LoadFoods({this.sortBy = 'default'});
//
//   @override
//   List<Object> get props => [sortBy];
// }


/**
 * food 무한스크롤 인디게이터 테스트 코드
 */
abstract class FoodEvent {}

class LoadFoods extends FoodEvent {
  final String sortBy;
  final int pageNum;

  LoadFoods({this.sortBy = 'default', this.pageNum = 1});

  @override
  List<Object> get props => [sortBy, pageNum];
}