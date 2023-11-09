import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isEditing = false;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _studentIDController = TextEditingController();

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
            _isEditing ? _buildEditableTextField(_nameController, 'Nama') : _buildProfileInfo('wahyu Indra Syahputra', 'Nama'),
            SizedBox(height: 10),
            _isEditing ? _buildEditableTextField(_studentIDController, 'Nomor Induk Mahasiswa') : _buildProfileInfo('992023017', 'Nomor Induk Mahasiswa'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isEditing = !_isEditing;
                  if (_isEditing) {
                    _nameController.text = 'wahyu Indra Syahputra';
                    _studentIDController.text = '992023017';
                  }
                });
              },
              child: Text(_isEditing ? 'Simpan' : 'Edit Profil'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String value, String label) {
    return Text(
      '$label: $value',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildEditableTextField(TextEditingController controller, String label) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }
}
