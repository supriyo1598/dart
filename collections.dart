//DART LIST
import 'dart:collection';
import 'dart:ffi';

enum enum1 { Welcome, to, IIA }

void main() {
  /* LIST */
  /*
  List? test = List.filled(5, null, growable: false); //Fixed List
  test[0] = "Kolkata";
  test[1] = "India";
  test[2] = "Asia";

  print(test);

  print(test[1]);

  //Growable List

  var test1 = ["Biswa Da", "Supriyo", "Biswayan"];
  print(test1);

  test1.add("Koyellema"); //Add function
  print(test1);

  test1.addAll(["Sourav", "Sagnik", "Rupam"]);
  print(test1);

  test1.insert(2, "Rahul");
  print(test1);
  */

  //SETS
/*
  var set1 = <String>{"Supriyo", "Kolkata", "Sarkar", "Supriyo"};
  print(set1);

  set1.add("Biswajit");

  print(set1);

  var L = set1.toList();
  print(L);

  set1.remove("Sarkar");
  print(set1);

  print(set1.length);

  print(set1.contains("Supriyo"));

  set1.clear();
  print(set1);
  */

  // MAPS
/*
  var states = {
    'West Bengal': 'Kolkata',
    'Maharastra': 'Mumbai',
    'Ladakh': 'Leh'
  };
  //    KEY => VALUE

  print(states['West Bengal']);
  */

  //QUEUES
/*
  Queue<String> queue = new Queue<String>();
  print(queue);

  queue.add("Kolkata");
  queue.add("City");
  queue.add("of");
  queue.add("Joy");

  print(queue);

  queue.removeFirst();

  print(queue);

  queue.addFirst("Kolkata");
  print(queue);

  queue.clear();
  print(queue);
  */
  //ENUM
/*
  for (enum1 x in enum1.values) {
    print(x);
  }
  */
}
