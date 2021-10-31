String getEnumVal(dynamic val) {
  val = val.toString();
  return val.substring(val.indexOf('.') + 1).toLowerCase();
}
