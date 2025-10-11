import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Layout Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Menggunakan LayoutBasic sebagai body
      home: const Scaffold(
        body: Center(
          child: LayoutBasic(), // ✅ Diperbaiki: Menggunakan LayoutBasic
        ),
      ),
    );
  }
} // ✅ Diperbaiki: Menutup kelas MyApp di sini

// 💡 Kelas LayoutBasic harus didefinisikan di luar kelas MyApp
class LayoutBasic extends StatelessWidget {
  const LayoutBasic({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagian 1: Judul dan Subjudul
    const titleText = Text(
      'Strawberry Pavlova', // Judul utama
      style: TextStyle(
        fontWeight: FontWeight.w800, // Teks tebal
        fontFamily: 'Roboto',
        letterSpacing: 0.5, // Jarak antar huruf
        fontSize: 30, // Ukuran teks besar
      ),
    );

    const subTitle = Text(
      'Pavlova adalah dessert berbasis meringue yang dinamai dari ballerina Rusia Anna Pavlova.',
      style: TextStyle(fontSize: 16), // Ukuran teks sedang
    );

    // Bagian 2: Rating dengan Bintang
    // Menggunakan Colors.green.shade500 untuk warna yang aman
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green.shade500),
        Icon(Icons.star, color: Colors.green.shade500),
        Icon(Icons.star, color: Colors.green.shade500),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20), // Jarak dalam container
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Jarak antar elemen merata
        children: [
          stars, // Deretan bintang
          const Text(
            '170 Reviews', // Teks jumlah review
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    // Bagian 3: Info waktu masak, porsi, dll
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2, // Jarak antar baris teks
    );

    // DefaultTextStyle.merge agar semua teks dalam container memakai style di atas
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Kolom 1: Waktu persiapan
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green.shade500),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            // Kolom 2: Waktu masak
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green.shade500),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            // Kolom 3: Jumlah porsi
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green.shade500),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Bagian 4: Gabungkan semua teks ke kolom kiri
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20), // Margin dalam kolom
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
        children: [
          titleText,
          const SizedBox(height: 10),
          subTitle,
          const SizedBox(height: 20),
          ratings,
          const SizedBox(height: 10),
          iconList,
        ],
      ),
    );

    // Bagian 5: Gambar
    final mainImage = Image.asset(
      'image/Strawberry_Pavlova.jpg',
      width: 300,
      height: 600,
      fit: BoxFit.cover,
    );

    // Bagian 6: Susun layout akhir
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 600,
        child: Card(
          elevation: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kolom kiri (teks)
              SizedBox(width: 440, child: leftColumn),
              // Kolom kanan (gambar)
              Expanded(child: mainImage),
            ],
          ),
        ),
      ),
    );
  }
}