import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Aplikasi Flutter Saya'),
            backgroundColor: Colors.blue,
          ),
          body: ListView(children: [
            const Text(
              'Belajar Flutter untuk Pemula',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: const Text('Ini adalah Container'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network('https://picsum.photos/id/237/200/300'),
                Image.network('https://picsum.photos/id/237/200/300')
              ],
            ),
            const Column(
              children: [
                Text('Baris 1'),
                Text('Baris 2'),
              ],
            ),
            Image.network('https://picsum.photos/seed/picsum/200/300'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('tombol'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('tombol teks'),
            ),
            Stack(alignment: Alignment.center, children: [
              Container(color: Colors.green, height: 100, width: 100),
              const Text('Atas Stack'),
            ]),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Ini adalah contoh Padding'),
            ),
            const Center(
              child: Text('Ini adalah teks yang terpusat'),
            ),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.red),
            ),
            GridView.count(
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(), // Untuk menghindari konflik scrolling dengan ListView
              crossAxisCount: 2,
              children: List.generate(
                  4, (index) => Center(child: Text('Item $index'))),
            ),
          ])),
    );
  }
}
