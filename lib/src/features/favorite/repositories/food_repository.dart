import '../models/food.dart';

//기본 FoodList 테스트 코드
// class FoodRepository {
//   Future<List<Food>> getFoods() async {
//
//     // 3초 지연을 추가합니다.
//     await Future.delayed(Duration(seconds: 3));
//
//     // 이곳에서 API 호출 또는 로컬 데이터베이스에서 음식 목록을 가져옵니다.
//     return [
//       Food(
//           name: '동궁찜닭 경기광명철산점',
//           image: 'assets/img/favorite/food_img.png',
//           rating: 4.8,
//           review: '1,272',
//           deliveryTime: '30~40분',
//           deliveryFee: '배달비 0원 ~ 3,000원',
//           minOrderPrice: '최소 주문 10,000원',
//           tags: ['배달', '포장', '매장예약', '테이블오더'],
//           coupons: ['2,000원 쿠폰', '1,000원 쿠폰']
//       ),
//       Food(
//           name: '해운대 막창집',
//           image: 'assets/img/favorite/food_img.png',
//           rating: 4.5,
//           review: '1,552',
//           deliveryTime: '20~30분',
//           deliveryFee: '배달비 2,000원',
//           minOrderPrice: '최소 주문 15,000원',
//           tags: ['배달', '포장'],
//           coupons: ['2,000원 쿠폰', '1,000원 쿠폰']
//       ),
//       Food(
//           name: '부산 떡볶이',
//           image: 'assets/img/favorite/food_img.png',
//           rating: 3.2,
//           review: '2,552',
//           deliveryTime: '10~20분',
//           deliveryFee: '배달비 1,000원',
//           minOrderPrice: '최소 주문 5,000원',
//           tags: ['배달', '포장', '테이크아웃'],
//           coupons: ['2,000원 쿠폰', '1,000원 쿠폰']
//       )
//     ];
//   }
// }

// Sort이벤트 테스트 코드 작성중
// food_repository.dart
// class FoodRepository {
//   Future<List<Food>> getFoods({String sortBy = 'default'}) async {
//     // sortBy 파라미터를 콘솔에 출력
//     print("Sorting by: $sortBy");
//
//     // 예시 데이터와 함께 API 호출을 시뮬레이션합니다.
//     // 실제 환경에서는 이 부분에 API 호출 코드가 들어갑니다.
//     List<Food> foods = [
//       Food(
//           name: '부산 떡볶이',
//           image: 'assets/img/favorite/food_img.png',
//           rating: 3.2,
//           review: '2,552',
//           deliveryTime: '10~20분',
//           deliveryFee: '배달비 1,000원',
//           minOrderPrice: '최소 주문 5,000원',
//           tags: ['배달', '포장', '테이크아웃'],
//           coupons: ['2,000원 쿠폰', '1,000원 쿠폰']
//       )
//       // 추가 음식 데이터
//     ];
//
//     // 디버깅을 위해 임시로 지연시킵니다.
//     await Future.delayed(Duration(seconds: 1));
//
//     // 정렬된 데이터를 반환
//     return foods;
//   }
// }

/**
 * 무한스크롤 인디게이터 테스트코드
 */
class FoodRepository {
  Future<List<Food>> getFoods({String sortBy = 'default', int pageNum = 1}) async {
    print("Sorting by: $sortBy on page $pageNum");

    // API 호출을 시뮬레이션합니다. 실제 환경에서는 여기에 API 호출 코드가 들어갑니다.
    // 페이지마다 다른 데이터를 반환하도록 설정합니다.
    await Future.delayed(Duration(milliseconds: 100)); // 네트워크 통신 지연 시뮬레이션

    return List.generate(10, (index) => Food(
        name: '음식 ${pageNum * 10 + index}',
        image: 'assets/img/favorite/food_img.png',
        rating: 3.0 + (index % 5) * 0.2,
        review: '${100 * index}',
        deliveryTime: '${10 + pageNum}~${20 + pageNum}분',
        deliveryFee: '${pageNum * 100}원',
        minOrderPrice: '${5000 + pageNum * 500}원',
        tags: ['배달', '포장', '매장예약', '테이블오더'],
        coupons: ['500원 쿠폰', '1000원 쿠폰']
    ));
  }
}
