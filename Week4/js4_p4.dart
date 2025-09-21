void main() {
  // List<int?> list = [1, 2, 3];
  // var list4 = ['Octrian Tito', '2341720078'];
  // var list2 = [0, ...list, ...list4];
  // print(list);
  // print(list2);
  // print(list2.length);

  // list = [1, 2, null];
  // print(list);
  // var list3 = [0, ...list, ...list4];
  // print(list3.length);

  // var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // promoActive = false;
  // nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // var login = 'Staff';
  // var nav2 = ['Home', 'Furniture', 'Plants', 
  // if (login case 'Manager') 'Inventory'];
  // print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}