import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi Title Section
    Widget titleSection = Container(
      // soal 3: Seluruh baris di dalam Container dan beri padding 32 piksel.
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1: Letakkan Column di dalam Expanded, atur crossAxisAlignment.start */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2: Baris pertama teks di dalam Container dengan padding bawah 8 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // Padding = 8
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // soal 2: Teks 'Batu, Malang, Indonesia' set warna menjadi abu-abu
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          /* soal 3: Ikon bintang (merah) dan teks "41" */
          // Ikon dibungkus dengan Padding untuk jarak yang rapi
          Padding(
            padding: const EdgeInsets.only(right: 4.0), // Padding di kanan ikon
            child: Icon(
              Icons.star,
              color: Colors.red[500], // Set warna merah
            ),
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Selamat datang di Air Terjun Coban Rondo, permata tersembunyi di Batu, Jawa Timur, yang berdiri gagah di kaki Gunung Panderman. '
        'Rasakan pengalaman menyeluruh yang menyegarkan jiwa dan raga; saksikanlah keajaiban alam di mana air murni jatuh bebas dari ketinggian sekitar 100 meter'
        'menciptakan tirai air raksasa yang menawan dengan udara yang sejuk dan segar. '
        'Selain pesona alamnya yang luar biasa, Coban Rondo (Air Terjun Janda) juga menyimpan legenda cinta yang mengharukan tentang Dewi Anjarwati,'
        'menambah kedalaman dan romantisme pada setiap kunjungan Anda. '
        '\n\nPenulis'
        '\nOctrian Adiluhung Tito Putra - 2341720078',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );



    // Main App Widget
    return MaterialApp(
      title: 'Flutter layout: Octrian Adiluhung Tito Putra, 2341720078', // Ganti dengan Nama dan NIM Anda
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo : Octrian Adiluhung Tito Putra, 2341720078'), // Ganti dengan Nama dan NIM Anda
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/pemandangan.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, 
            textSection, 
            buttonSection
          ],
          ) 
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
