import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double saldo = 10000.0; // Misalkan saldo awal

  void tambahDana(double jumlah) {
    setState(() {
      saldo += jumlah;
    });
  }

  void kurangiDana(double jumlah) {
    setState(() {
      saldo -= jumlah;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Dana'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Saldo Anda:',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              'Rp${saldo.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => tambahDana(1000.0),
                    child: Text('Tambah Rp1.000'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => kurangiDana(1000.0),
                    child: Text('Kurangi Rp1.000'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
