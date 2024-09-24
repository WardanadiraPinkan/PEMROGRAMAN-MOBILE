import 'package:dart_application_4/dart_application_4.dart'
    as dart_application_4;

// PRAKTIKUM 1
// void main(List<String> arguments) {
//   final list = List<String?>.filled(5, null);
//   assert(list.length == 5);

//   list[1] = "Wardanadira Pinkan Dwiyuwanda";
//   list[2] = "2241760116";

//   print("Panjang list: ${list.length}");
//   print("Isi list:");
//   for (int i = 0; i < list.length; i++) {
//     print("Index $i: ${list[i]}");
//   }
// }

// PRAKTIKUM 2
// void main(List<String> arguments) {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print('Halogens: $halogens');

//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = <String, dynamic>{}; // Now explicitly a Map<String, dynamic>

//   // Menggunakan .add() untuk names1
//   names1.add('Wardanadira Pinkan Dwiyuwanda');
//   names1.add('2241760116');

//   // Menggunakan .addAll() untuk names2
//   names2.addAll(['Wardanadira Pinkan Dwiyuwanda', '2241760116']);

//   // Menambahkan key-value pair ke names3 (karena ini adalah Map)
//   names3['Nama'] = 'Wardanadira Pinkan Dwiyuwanda';
//   names3['NIM'] = '2241760116';

//   print('names1 (menggunakan .add()): $names1');
//   print('names2 (menggunakan .addAll()): $names2');
//   print('names3 (Map): $names3');
// }

// PRAKTIKUM 3
// void main(List<String> arguments) {
//   // Map 'gifts' dengan key bertipe String
//   var gifts = {
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': '1'
//   };

//   // Map 'nobleGases' dengan key bertipe int
//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: '2',
//   };

//   // Menambahkan elemen nama dan NIM pada gifts
//   gifts['name'] = 'Wardanadira Pinkan Dwiyuwanda';
//   gifts['nim'] = '2241760116';

//   // Menambahkan elemen nama dan NIM pada nobleGases
//   nobleGases[20] = 'Wardanadira Pinkan Dwiyuwanda';
//   nobleGases[2241760116] = '2241760116';

//   // Membuat map mhs1 dan menambahkan elemen nama dan NIM
//   var mhs1 = Map<String, String>();
//   mhs1['name'] = 'Wardanadira Pinkan Dwiyuwanda';
//   mhs1['nim'] = '2241760116';

//   // Memodifikasi elemen pada 'gifts'
//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   // Membuat map mhs2 dan menambahkan elemen nama dan NIM
//   var mhs2 = Map<int, String>();
//   mhs2[1] = 'Wardanadira Pinkan Dwiyuwanda';
//   mhs2[2241760116] = '2241760116';

//   // Memodifikasi elemen pada 'nobleGases'
//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';

//   // Output hasil map
//   print(gifts);
//   print(nobleGases);
//   print(mhs1);
//   print(mhs2);
// }

// PRAKTIKUM 4
// void main(List<String> arguments) {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list);  // Diubah dari list1 menjadi list
//   print(list2);
//   print(list2.length);

//   var list1 = [1, 2, null];
//   print('list1: $list1');

//   var list3 = [0, ...?list1];
//   print('list3: $list3');
//   print('list3 length: ${list3.length}');

//   var nimList = [2, 2, 4, 1, 7, 6, 0, 1, 1, 6];
//   var combinedList = [...list3, ...nimList];
//   print('Combined list with NIM: $combinedList');
//   print('Combined list length: ${combinedList.length}');

//   bool promoActive = true;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print('Ketika promoActive true: $nav');

//   promoActive = false;
//   nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print('Ketika promoActive false: $nav');

//   String login = 'Manager';

//   var nav2 = [
//     'Home',
//     'Furniture',
//     'Plants',
//     if (login == 'Manager') 'Inventory'
//   ];

//   print(nav2);

//   login = 'Customer';
//   var nav3 = [
//     'Home',
//     'Furniture',
//     'Plants',
//     if (login == 'Manager') 'Inventory'
//   ];

//   print(nav3);

//   var listOfInts = [1, 2, 3];
//   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
//   assert(listOfStrings[1] == '#1');
//   print(listOfStrings);
// }

// PRAKTIKUM 5
// void main(List<String> arguments) {
//   var record = {'first': 1, 'a': 2, 'b': true, 'last': 'last'};
//   print(record);

//   (int, int) tukar((int, int) record) {
//     var (a, b) = record;
//     return (b, a); // Menukar nilai a dan b
//   }

//   // Membuat sebuah record dengan nilai pasangan (int, int)
//   var pasangan = (5, 10);

//   // Menampilkan nilai sebelum ditukar
//   print('Sebelum ditukar: $pasangan');

//   // Menggunakan fungsi tukar untuk menukar elemen-elemen
//   var hasil = tukar(pasangan);

//   // Menampilkan nilai setelah ditukar
//   print('Setelah ditukar: $hasil');

//   // Inisialisasi record dengan nama dan NIM
//   (String, int) mahasiswa = ('Wardanadira Pinkan Dwiyuwanda', 2241760116);

//   // Menampilkan record mahasiswa
//   print(mahasiswa);

//   // Deklarasi record dengan positional dan named fields
//   var mahasiswa2 = ('Wardanadira Pinkan Dwiyuwanda', a: 2241760116, b: true, 'last');

//   // Mengakses positional dan named fields
//   print(mahasiswa2.$1); // Mengakses positional field pertama
//   print(mahasiswa2.a);  // Mengakses named field 'a'
//   print(mahasiswa2.b);  // Mengakses named field 'b'
//   print(mahasiswa2.$2); // Mengakses positional field kedua
// }