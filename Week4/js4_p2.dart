void main() {
  // var halogens = ['fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'];
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add('Octrian Tito');
  names1.add('2341720078');
  names2.addAll({'Octrian Tito', '2341720078'});


  print(names1);
  print(names2);
}