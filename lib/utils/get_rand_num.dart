import 'dart:math';

double getRandNum(double start, double end) {
  return Random().nextInt((end - start).toInt()) + start;
}
