import 'dart:math';

// - 1~45사이의 숫자들 중 6개의 숫자를 중복없이 뽑아 하나의 복권(리스트)으로 만듭니다.
// [ 조건 ]
// - 출력 형태  : 발급한 로또 번호 : [로또 번호 목록 전체]

void lotto (){
  Set<int> lottoNum = {};

  while(lottoNum.length < 6){
    lottoNum.add((Random().nextInt(46))+1);
  }
  

  print(lottoNum);
}

void main() {
  lotto();
}