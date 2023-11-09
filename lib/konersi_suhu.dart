import 'package:flutter/material.dart';

void main() {
  runApp(TemperatureConverterApp());
}

class TemperatureConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemperatureConverterScreen(),
    );
  }
}

class TemperatureConverterScreen extends StatefulWidget {
  @override
  _TemperatureConverterScreenState createState() =>
      _TemperatureConverterScreenState();
}

class _TemperatureConverterScreenState extends State<TemperatureConverterScreen> {
  TextEditingController _celciusController = TextEditingController();
  double _result = 0;
  String _resultUnit = 'Fahrenheit';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _celciusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Temperature (°C)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _convertTemperature();
              },
              child: Text('Convert'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $_result $_resultUnit',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildConversionButton('Fahrenheit'),
                _buildConversionButton('Kelvin'),
                _buildConversionButton('Reamur'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConversionButton(String unit) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _resultUnit = unit;
          _convertTemperature();
        });
      },
      child: Text(unit),
    );
  }

  void _convertTemperature() {
    double celcius = double.tryParse(_celciusController.text) ?? 0;

    switch (_resultUnit) {
      case 'Fahrenheit':
        _result = (celcius * 9 / 5) + 32;
        break;
      case 'Kelvin':
        _result = celcius + 273.15;
        break;
      case 'Reamur':
        _result = celcius * 4 / 5;
        break;
    }
  }
}
