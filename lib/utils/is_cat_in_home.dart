import 'package:bisharer/enum/cats.dart';

bool isCatInHome(CatsEnum cat) {
  return CatsEnum.values.sublist(0, 3).contains(cat);
}
