// - 구매자의 장바구니에 담겨 있는 물품들의 전체 금액을 계산합니다.

// [ 조건 ]
// - 현재 가게에서 판매하고 있는 상품들과 각각의 가격은 다음과 같습니다.
//     - 티셔츠 : 10000원
//     - 바지 : 8000원
//     - 모자 : 4000원


//  [ 조건 ]
// - 상품들의 총 가격이 2만원이 넘은 경우
//     - `할인 금액 : [1번에서 구한 가격의 10%]원` 을 출력합니다.
// - 상품들의 총 가격이 2만원이 넘지 않은 경우
//     - 해당 경우에는 따로 관련 내용을 출력 하지 않습니다!

void cart (List<String> items) {
  Map<String, int> priceList = {
    '티셔츠': 10000,
    '바지': 8000,
    '모자': 4000,
  };

  int total = 0;
  double discount = 0;
  bool discountMessage = false;

  for (String item in items){
      total += priceList[item] ?? 0;
  }
  
  if (total>=20000){
    discount = total * 0.1;
    discountMessage = true;
  }

  print('장바구니에 $total 원 어치를 담으셨네요 !');
  if (discountMessage) {
    print('할인 금액 : $discount 원');
  }
}

void main() {
  cart(["티셔츠", "바지", "모자", "티셔츠", "바지"]);
}