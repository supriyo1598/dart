int add(int a, int b) {
  int c = a + b;
  return c;
}

void optional(int a, [var temp]) {
  print("This function can get optional perameters");
  print(a);
  print(temp);
}

void defaultvalue(int a, {int b = 0}) {
  print(a);
  print(b);
}

void optional_named(int a, {var temp1, var tem2}) {
  print(a);
  print(temp1);
  print(tem2);
}

//lambda function
void play() => print("Today is Holiday");

void main() {
  var r = add(2, 5);
  print(r);

  optional(5);
  optional_named(5, tem2: 6);

  defaultvalue(5, b: 5);

  play();
}
