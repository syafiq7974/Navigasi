import 'package:flutter/material.dart';
import 'pages/smartphone_page.dart';
import 'pages/laptop_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belanja App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/smartphone': (context) => SmartphonePage(
              smartphoneName: 'iPhone 14',
              smartphonePrice: 999.99,
            ),
        '/laptop': (context) => LaptopPage(
              laptopName: 'MacBook Pro',
              laptopPrice: 1299.99,
            ),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belanja App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text('Smartphone'),
                onTap: () {
                  Navigator.pushNamed(context, '/smartphone');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Laptop'),
                onTap: () {
                  Navigator.pushNamed(context, '/laptop');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
