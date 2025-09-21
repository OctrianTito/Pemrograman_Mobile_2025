void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  final list = List<String?>.filled(5, null);
  assert(list.length == 5);
  
  list[1] = "Octrian Tito";
  list[2] = "2341720078";
  
  print(list.length);
  print(list[1]);
  print(list[2]);
  print(list);
}