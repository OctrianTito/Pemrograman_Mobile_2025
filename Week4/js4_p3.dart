void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'name': 'Octrian Tito',
    'nim': '2341720078'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    'name': 'Octrian Tito',
    'nim': '2341720078'
  };

  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Octrian Tito';
  mhs1['nim'] = '2341720078';

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';  
  gifts['fifth'] = 'golden rings';
  gifts['name'] = 'Octrian Tito';
  gifts['nim'] = '2341720078';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Octrian Tito';
  mhs2[2] = '2341720078';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases['name'] = 'Octrian Tito';
  nobleGases['nim'] = '2341720078';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}