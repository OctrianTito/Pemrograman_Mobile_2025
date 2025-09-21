(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {

  var record = (2, 4);
  print('Sebelum ditukar: $record');
  
  var hasil = tukar(record);
  print('Setelah ditukar: $hasil');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ("Octrian Tito", 2341720078);
  print(mahasiswa);

  var mahasiswa2 = ('Octrian Tito', a: 2341720078, b: true, 'last');

  print(mahasiswa2.$1); // Prints nama
  print(mahasiswa2.a); // Prints nim
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}