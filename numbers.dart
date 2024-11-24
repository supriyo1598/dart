void main() {
  int x = 5;
  double y = 5.74;

  var s = "57.4";
  //parse function used to convert any string to the number

  double p = double.parse(s);
  print(p);

  var t = "5";
  int o = int.parse(t);
  print(o);
  print(o.isFinite);
  print(o.isInfinite);
  print(o.isOdd);
  print(o.isEven);
  print(o.isNegative);
  print(o.sign);

  int r = -5;
  print(r.abs());

  double g = 3.5;
  print(g.ceil());
  print(g.floor());
  print(g.round());

  double p1 = 5.7;
  double p2 = 10.7;
  print(p1.compareTo(p2));

  double a1 = 5.74562;
  print(a1.truncate());
}
