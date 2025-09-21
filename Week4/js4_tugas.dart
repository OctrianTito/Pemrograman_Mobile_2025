// Basic function
// String greet(String name) {
//   return 'Hello, $name!';
// }

// void printInfo(String name, int age) {
//   print('Name: $name, Age: $age');
// }

// String getFullName(String firstName, [String? lastName]) {
//   return lastName != null ? '$firstName $lastName' : firstName;
// }

// void createUser({
//   required String name,  // required = wajib diisi
//   int? age,             // optional = boleh null
//   String? address
// }) {
//   print('Name: $name');
//   print('Age: ${age ?? "Unknown"}');
//   print('Address: ${address ?? "Unknown"}');
// }

// void printUserInfo(
//   String name,           // required positional
//   {int? age,            // optional named
//   required String nim}   // required named
// ) {
//   print('Name: $name');
//   print('Age: ${age ?? "Unknown"}');
//   print('NIM: $nim');
// }

// void main() {
// printInfo('Octrian', 20);  // Harus mengisi kedua parameter

// // Penggunaan:
// print(getFullName('Octrian'));         // Output: Octrian
// print(getFullName('Octrian', 'Tito')); // Output: Octrian Tito

// // Penggunaan:
// createUser(
//   name: 'Octrian Tito', 
//   age: 20,
//   address: 'Malang'
// );

// // Penggunaan:
// printUserInfo(
//   'Octrian Tito',       // positional parameter
//   age: 20,              // named parameter
//   nim: '2341720078'     // required named parameter
// );

// }

// void main() {
//   // Function sebagai variabel
//   var sayHello = (String name) => 'Hello $name';
  
//   // Function sebagai parameter
//   void printResult(String Function(String) func) {
//     print(func('Dart'));
//   }
  
//   printResult(sayHello);
// }

// void main() {
//   var numbers = [1, 2, 3];
  
//   numbers.forEach((number) {
//     print(number * 2);
//   });
  
//   // Arrow syntax
//   numbers.forEach((n) => print(n * 2));
// }

// void main() {
//   var name = 'Dart';
  
//   void greet() {
//     print('Hello $name'); // Dapat mengakses name
//   }
  
//   greet();
// }

// Function makeAdder(int addBy) {
//   return (int i) => addBy + i; // Closure mengakses addBy
// }

(String, int) getPersonInfo() {
  return ('Octrian Tito', 2341720078);
}

void main() {
  var (name, nim) = getPersonInfo();
  print('Name: $name, NIM: $nim');
}