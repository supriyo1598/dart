import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TemparatureConverter(),
    );
  }
}

class TemparatureConverter extends StatefulWidget {
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemparatureConverter> {
  final TextEditingController _tempController = TextEditingController();
  String _inputUnit = 'Celcius';
  String _outputUnit = 'Farenheit';
  String _result = '';

  final List<String> _units = ['Celcius', 'Farenheit', 'Kelvin'];

  void _convertTemperature() {
    double inputTemperature = double.tryParse(_tempController.text) ?? 0.0;
    double conVertedTemp = 0.0;

    if (_inputUnit == _outputUnit) {
      conVertedTemp = inputTemperature;
    } else if (_inputUnit == 'Celcius') {
      if (_outputUnit == 'Farenheit') {
        conVertedTemp = inputTemperature * 9 / 5 + 32;
      } else {
        conVertedTemp = inputTemperature + 273;
      }
    } else if (_inputUnit == 'Farenheit') {
      if (_outputUnit == 'Celcius') {
        conVertedTemp = (inputTemperature - 32) * 5 / 9;
      } else {
        conVertedTemp = (inputTemperature - 32) * 5 / 9 + 273;
      }
    } else if (_inputUnit == 'Kelvin') {
      if (_outputUnit == 'Celcius') {
        conVertedTemp = inputTemperature - 273;
      } else {
        conVertedTemp = (inputTemperature - 273) * 9 / 5 + 32;
      }
    }
    setState(() {
      _result = '${conVertedTemp.toStringAsFixed(2)} $_outputUnit';
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Temperature Converter')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _tempController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                label: Text('Enter the temp:'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButton(
                  value: _inputUnit,
                  onChanged: (value) {
                    setState(() {
                      _inputUnit = value!;
                    });
                  },
                  items: _units.map((unit) {
                    return DropdownMenuItem(value: unit, child: Text(unit));
                  }).toList(),
                ),
                Icon(Icons.arrow_forward),
                DropdownButton(
                  value: _outputUnit,
                  onChanged: (value) {
                    setState(() {
                      _outputUnit = value!;
                    });
                  },
                  items: _units.map((unit) {
                    return DropdownMenuItem(value: unit, child: Text(unit));
                  }).toList(),
                )
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _convertTemperature,
              child: Text('Convert'),
            ),
            SizedBox(height: 16),
            Text(
              _result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
