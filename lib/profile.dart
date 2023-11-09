import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('assets/gambar.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'wahyu Indra Syahputra',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('992023017'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengedit profil
              },
              child: Text('Edit Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
