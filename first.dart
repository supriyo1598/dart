//My first dart program

main() {
  print("Hello 2nd Year");
  var first_name = "Supriyo Sarkar";
  print(first_name);
  //Datatypes in dart

  int marks = 70;
  double pi = 3.14;
  var msg = "I am a string";
  bool isValid = true;
  var list = [5, 3.14, "Kolkata"];
  var student = {"name": "Supriyo", "age": 25, "Branch": "CS"}; //maps
  //var h = '\u2665';
  //print(h);
  //final flower = "Rose";
  //flower = "xyz";
  //const fruit = "Apple";
  //fruit = "Banana";

  //Operator
  /*
  + Add
  - Sub
  * Mul
  / Div (Result in point)
  % Remender
  ~/  Floor Div( Result in Quotient
  */
  int a = 5, b = 7;
  int c = a + b;
  int d = a - b;
  int e = a * b;
  double f = b / a;
  int g = b % a;
  int h = b ~/ a;
  print(c);
  print(d);
  print(e);
  print(f);
  print(g);
  print(h);

  //++ incement
  //-- decrement

  var x = 7;
  print(x++);

  //Relational Operator
  /*
  > gt
  < lt
  >= gt eq
  <= lt eq
  == eq
  != neq
*/

//logical oprator
/*
&& - AND
|| -OR
!- NOT
*/

//Dart Type test operator

//as operator ( Used for converting one type to another)

//is opeartor (It returns true if the object has specified type)

  int num2 = 5;
  print(num2 is! String);
}
