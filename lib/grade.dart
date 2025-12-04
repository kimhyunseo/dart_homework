// - 제시된 예시 점수에  해당하는 등급을 알맞게 출력하세요!

// [ 조건 ]
// - 예시 점수 : 84점
// - 점수에 따른 등급 기준
//     - 90점 ~ 100점 : A등급
//     - 80점 ~ 89점 : B등급
//     - 80점 이하는 C등급
// - 출력 형태 : 이 학생의 점수는 [점수] 이며, 등급은 [등급]입니다!

void grade(int score) {
  String grade;

  if (score >= 90 && score <= 100) {
    grade = 'A등급';
  } else if (score >= 80 && score <= 89) {
    grade = 'B등급';
  } else {
    grade = 'C등급';
  }
  print('이 학생의 점수는 $score 이며, 등급은 $grade 입니다!');
}

void main() {
  grade(100);
}