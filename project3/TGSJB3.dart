void main() {
  const int batasAtas = 201;
  const String nama = "Wardanadira Pinkan Dwiyuwanda";
  const String nim = "2241760116";

  for (int angka = 2; angka <= batasAtas; angka++) {
    if (isPrima(angka)) {
      print("$angka adalah bilangan prima");
      print("$nama");
      print("$nim");
      print("");
    }
  }
}

bool isPrima(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
