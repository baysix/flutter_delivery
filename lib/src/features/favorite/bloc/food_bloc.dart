import 'package:apps_user/src/features/favorite/repositories/food_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'food_event.dart';
import 'food_state.dart';

//기본 bloc 테스트 코드
// class FoodBloc extends Bloc<FoodEvent, FoodState> {
//   final FoodRepository foodRepository;
//
//   FoodBloc({required this.foodRepository}) : super(FoodInitial()) {
//     on<LoadFoods>((event, emit) async {
//       emit(FoodLoading());
//       try {
//         final foods = await foodRepository.getFoods();
//         emit(FoodLoaded(foods));
//       } catch (e) {
//         emit(FoodError("Failed to load food list"));
//       }
//     });
//   }
// }


// sort event 적용 테스트 코드 작성중
// food_bloc.dart
// class FoodBloc extends Bloc<FoodEvent, FoodState> {
//   final FoodRepository foodRepository;
//
//   FoodBloc({required this.foodRepository}) : super(FoodInitial()) {
//     on<LoadFoods>((event, emit) async {
//       emit(FoodLoading());
//       try {
//         final foods = await foodRepository.getFoods(sortBy: event.sortBy);
//         emit(FoodLoaded(foods, sortBy: event.sortBy));
//         print('FoodLoaded with sortBy: ${event.sortBy}');
//       } catch (e) {
//         emit(FoodError("Failed to load food list"));
//       }
//     });
//   }
// }


//@@@@@@@@ 무한스크롤 인디게이터 페이지네이션 테스트코드

class FoodBloc extends Bloc<FoodEvent, FoodState> {

  final FoodRepository foodRepository;

  FoodBloc({required this.foodRepository}) : super(FoodInitial()) {
    on<LoadFoods>((event, emit) async {
      print('test');
      // 첫 페이지 요청 시나 정렬 변경 시
      if (event.pageNum == 1) {
        emit(FoodLoading()); // 로딩 상태
      }

      try {
        final foods = await foodRepository.getFoods(sortBy: event.sortBy, pageNum: event.pageNum);
        if (foods.isEmpty && event.pageNum == 1) {
          emit(FoodLoaded(foods: [], hasReachedMax: true, sortBy: event.sortBy)); // 데이터가 없는 경우
        } else if (foods.isEmpty) {
          emit(FoodLoaded(foods: (state as FoodLoaded).foods, hasReachedMax: true, sortBy: event.sortBy)); // 추가 페이지 데이터가 없는 경우
        } else {
          emit(FoodLoaded(foods: event.pageNum == 1 ? foods : (state as FoodLoaded).foods + foods, hasReachedMax: false, sortBy: event.sortBy)); // 새 데이터 로드
        }
      } catch (_) {
        emit(FoodError("Failed to fetch foods"));
      }
    });
  }
}
