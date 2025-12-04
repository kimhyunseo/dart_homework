// 가상의 쇼핑몰에서 결제 금액을 계산하는 프로그램을 만들어봅니다.

// 1. 구매자가 장바구니에 담은 상품들의 전체 금액을 계산합니다.
// 2. 총 금액이 20,000원 이상일 경우, 10% 할인을 적용합니다.
// 3. 최종적으로 구매자가 결제해야 하는 금액을 출력합니다.

void cart(List<String> items) {
  Map<String, int> priceList = {'티셔츠': 10000, '바지': 8000, '모자': 4000};

  int total = 0;
  double discount = 0;
  double discounted = 0;

  // 예외상황 1 : 장바구니에 담긴 물건이 없을 때
  if (items.isEmpty) {
    throw Exception("장바구니에 물건을 담아주세요");
  }

  // 예외상황 2: 장바구니에 담긴 물건이 가격표에 없을 때
  for (String item in items) {
    if ((priceList.containsKey(item) == false)) {
      throw Exception("유효한 물건을 담아주세요");
    }
  }

  // 1. 구매자가 장바구니에 담은 상품들의 전체 금액을 계산합니다.

  // for (String item in items){
  //     total += priceList[item] ?? 0;
  // }

  for (String item in items) {
    if (priceList.containsKey(item)) {
      total += priceList[item]!;
    }
  }

  if (total >= 20000) {
    discount = total * 0.1;
    discounted = total - discount;
  }

  // 3. 최종적으로 구매자가 결제해야 하는 금액을 출력합니다.
  print('장바구니에 $total원 어치를 담으셨네요 !');
  if (discount != 0) {
    print(
      '할인 금액 : ${discount.toInt()}원 \n 최종 결제 금액은 ${discounted.toInt()} 원입니다!',
    );
  } else {
     print(
      '최종 결제 금액은 ${total.toInt()} 원입니다!',
    );
  }
}
