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
              'Selamat Datang',
              style: TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
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
