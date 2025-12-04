import 'package:dart_homework/cart.dart';
import 'package:dart_homework/grade.dart';
import 'package:dart_homework/lotto.dart';

void main () {
  try {
  grade(84);
} on Exception catch (e) {
  print("$e");
}
  print("----------------");
  try {
  cart(["티셔츠", "바지", "모자", "티셔츠", "바지"]);
} on Exception catch (e) {
  print("$e");
}
  print("----------------");
  lotto();
}