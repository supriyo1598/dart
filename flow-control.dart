import 'dart:ffi';

void main() {
  var num = 5;
  if (num > 0) {
    print("Positive");
  } else if (num < 0) {
    print("Negative");
  } else {
    print("Zero");
  }

  var c = 'B';
  switch (c) {
    case 'A':
      {
        print("VOWEL");
      }
      break;
    case 'E':
      {
        print("VOWEL");
      }
      break;
    case 'I':
      {
        print("VOWEL");
      }
      break;
    case 'O':
      {
        print("VOWEL");
      }
      break;
    case 'U':
      {
        print("VOWEL");
      }
      break;
    default:
      {
        print("Consonent");
      }
  }

  for (var i = 0; i <= 5; i++) {
    print(i);
  }

  var L = [2, 4, 7, 9, 5, 8, 3];
  for (var i in L) {
    print(i);
  }

  var L1 = [2, 4, 7, 9, 5, 8, 3];

  L1.forEach((var x) => print(x));

  var i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

  var j = 1;
  do {
    j++;
    print(j);
  } while (j <= 10);

  loop1:
  for (var i = 0; i < 5; i++) {
    loop2:
    for (var j = 0; j < 4; j++) {
      print(j);
      if (j == 2) {
        break loop1;
      }
    }
  }
}
