void main() {
  String nama = "Octrian Adiluhung Tito Putra";
  String nim = "2341720078";

  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan prima ditemukan: $i");
      print("Nama: $nama");
      print("NIM: $nim\n");
    }
  }
}

bool isPrime(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}