import 'dart:math';

// - 1~45사이의 숫자들 중 6개의 숫자를 중복없이 뽑아 하나의 복권(리스트)으로 만듭니다.
// [ 조건 ]
// - 출력 형태  : 발급한 로또 번호 : [로또 번호 목록 전체]

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

  if (count > 5) { 
    print("당첨 여부 : [1등]");
  } else if (count == 4 ){
    print("당첨 여부 : [2등]");
  } else if (count == 3 ){
    print("당첨 여부 : [3등]");
  } else {
    print("당첨 여부 : 당첨 실패!");
  }


}

void main() {
  lotto();
}
