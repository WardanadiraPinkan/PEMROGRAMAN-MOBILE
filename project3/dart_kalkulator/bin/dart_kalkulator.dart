import 'dart:io';

void main() {
  List<List<int>> sks = List.generate(50, (_) => List<int>.filled(30, 0));
  List<List<String>> nilaihuruf = List.generate(50, (_) => List<String>.filled(30, ''));
  List<List<String>> matkul = List.generate(50, (_) => List<String>.filled(50, ''));
  List<int> skssmt = List<int>.filled(14, 0);
  List<double> nr = List<double>.filled(14, 0);

  print('==============================================');
  print('\tProgram Menghitung IPK Mahasiswa');
  print('==============================================');
  
  stdout.write('Masukkan jumlah semester: ');
  int jmlsmt = int.parse(stdin.readLineSync()!);

  if (jmlsmt < 2 || jmlsmt > 14) {
    print('Jumlah semester salah!');
    return;
  }

  for (int i = 0; i < jmlsmt; i++) {
    int jumlahnilai = 0;
    int jumlahsks = 0;

    stdout.write('Masukkan jumlah mata kuliah semester ${i + 1}: ');
    int jmlmk = int.parse(stdin.readLineSync()!);

    if (jmlmk < 2) {
      print('Jumlah matakuliah kurang dari 2 setiap semester');
      return;
    }

    for (int j = 0; j < jmlmk; j++) {
      print('Masukkan mata kuliah ke ${j + 1}');
      stdout.write('Masukkan nama matkul: ');
      matkul[i][j] = stdin.readLineSync()!;

      stdout.write('Masukkan jumlah sks matkul: ');
      sks[i][j] = int.parse(stdin.readLineSync()!);

      stdout.write('Masukkan nilai matkul: ');
      nilaihuruf[i][j] = stdin.readLineSync()!;

      print('--------------------------------------------');

      int nilai;
      switch (nilaihuruf[i][j]) {
        case 'A':
          nilai = 4 * sks[i][j];
          break;
        case 'B':
          nilai = 3 * sks[i][j];
          break;
        case 'C':
          nilai = 2 * sks[i][j];
          break;
        case 'D':
          nilai = 1 * sks[i][j];
          break;
        case 'E':
          nilai = 0;
          break;
        default:
          print('Input salah!');
          return;
      }

      jumlahnilai += nilai;
      jumlahsks += sks[i][j];
    }

    if (jumlahsks > 24) {
      print('Jumlah SKS semester lebih dari 24');
      return;
    } else {
      skssmt[i] = jumlahsks;
      nr[i] = jumlahnilai / jumlahsks;
    }
  }

  print('==============================================');
  print('\t\tTranskrip Nilai');
  print('==============================================');

  int totalsks = 0;
  double totalnr = 0;

  for (int i = 0; i < jmlsmt; i++) {
    print('\nHasil Semester ${i + 1}:');
    print('\n${'Mata Kuliah'.padRight(12)}${'SKS'.padRight(12)}${'Nilai'.padRight(12)}');

    for (int j = 0; j < matkul[i].length && matkul[i][j].isNotEmpty; j++) {
      print('${matkul[i][j].padRight(12)}${sks[i][j].toString().padRight(12)}${nilaihuruf[i][j].padRight(12)}');
    }

    print('\nSKS\t: ${skssmt[i]}');
    print('NR\t: ${nr[i].toStringAsFixed(2)}');
    totalsks += skssmt[i];
    totalnr += nr[i];
    print('--------------------------------------------');
  }

  double ipk = totalnr / jmlsmt;
  print('\nTotal SKS\t: $totalsks');
  print('IPK\t\t: ${ipk.toStringAsFixed(2)}');
  print('==============================================');
}