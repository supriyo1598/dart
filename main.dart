import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ageCalculator(),
    );
  }
}

class ageCalculator extends StatefulWidget {
  _ageCalculatorState createState() => _ageCalculatorState();
}

class _ageCalculatorState extends State<ageCalculator> {
  final TextEditingController _dobController = TextEditingController();
  String _result = '';

  void _calculateAge() {
    String dobText = _dobController.text;
    if (dobText.isEmpty) {
      setState(() {
        _result = 'Please enter a valid dob';
      });
      return;
    }
    try {
      DateTime dob = DateFormat('yyyy-MM-dd').parse(dobText);
      DateTime today = DateTime.now();

      int years = today.year - dob.year;
      int months = today.month - dob.month;
      int days = today.day - dob.day;

      if (days < 0) {
        months--;
        days += DateTime(today.year, today.month, 0).day;
      }
      if (months < 0) {
        years--;
        months += 12;
      }

      setState(() {
        _result = 'Age: $years yeras,$months months,and $days days';
      });
    } catch (e) {
      setState(() {
        _result = 'Please enter the date in yyyy-mm-dd format';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Age Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _dobController,
              decoration: InputDecoration(
                labelText: 'Enter the DOB',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: _calculateAge, child: Text('Calculate Age')),
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
