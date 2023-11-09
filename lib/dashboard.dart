import 'package:flutter/material.dart';
import 'package:mobile_1/profile.dart';
import 'kalkulator.dart'; // Pastikan untuk mengganti 'calculator_page.dart' dengan nama file yang sesuai

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to the Home!'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Kalkulator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'peofil',
          ),
        ],
         onTap: (index) {
          // Tambahkan logika untuk menangani navigasi berdasarkan indeks
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CalculatorApp()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          }
        },
      ),
    );
  }
}
