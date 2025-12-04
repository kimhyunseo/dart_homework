import 'dart:math';

// 가상의 복권 프로그램을 만들어봅니다.

void plusLotto() {
  Set<int> myLottoNum = {};
  final List<int> lotto = [9, 19, 29, 35, 37, 38];
  int count = 0;

// 1. 1~45까지의 숫자중 중복되지 않게 6개의 번호를 뽑아 1장의 복권을 발급합니다.

  while (myLottoNum.length < 6) {
    myLottoNum.add((Random().nextInt(45)) + 1);
  }

  myLottoNum.toList();

  print("발급한 로또 번호 : ${myLottoNum.toList()}");

  // 2. 발급한 복권 번호를 지정된 당첨 번호와 비교하여 당첨 여부를 확인합니다.
  // + 당첨이 되었을 때 어떤 번호가 당첨이 되었는지 같이 출력합니다.

  List<int> lottoNum = [];

  for (int myNum in myLottoNum) {
    if (lotto.contains(myNum)) {
      count++;
      lottoNum.add(myNum);
    }
  }

  if (count > 4) {
    print("당첨 여부 : [1등] | 당첨 번호는 $lottoNum 입니다!");
  } else if (count == 4) {
    print("당첨 여부 : [2등] | 당첨 번호는 $lottoNum 입니다!");
  } else if (count == 3) {
    print("당첨 여부 : [3등] | 당첨 번호는 $lottoNum 입니다!");
  } else {
    print("당첨 여부 : 당첨 실패!");
  }

  // 3. 다음 당첨 조회를 위해 복권 번호를 초기화합니다.
  
  myLottoNum.clear();
  lottoNum.clear();

  print("발급한 로또 번호 : ${myLottoNum.toList()}");
}


void main(){
  plusLotto();
}