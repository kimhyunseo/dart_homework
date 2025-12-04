import 'dart:math';

// 가상의 복권 프로그램을 만들어봅니다.

// 1. 1~45까지의 숫자중 중복되지 않게 6개의 번호를 뽑아 1장의 복권을 발급합니다.
// 2. 발급한 복권 번호를 지정된 당첨 번호와 비교하여 당첨 여부를 확인합니다.
// 3. 다음 당첨 조회를 위해 복권 번호를 초기화합니다.

void lotto() {
  Set<int> myLottoNum = {};
  final List<int> lotto = [9, 19, 29, 35, 37, 38];
  int count = 0;

  while (myLottoNum.length < 6) {
    myLottoNum.add((Random().nextInt(46)) + 1);
  }

  myLottoNum.toList();

  print("발급한 로또 번호 : ${myLottoNum.toList()}");

  for (int myNum in myLottoNum) {
    if (lotto.contains(myNum)) {
      count++;
    }
  }

  if (count > 4) {
    print("당첨 여부 : [1등]");
  } else if (count == 4) {
    print("당첨 여부 : [2등]");
  } else if (count == 3) {
    print("당첨 여부 : [3등]");
  } else {
    print("당첨 여부 : 당첨 실패!");
  }

  myLottoNum.clear();

  print("발급한 로또 번호 : ${myLottoNum.toList()}");
}
