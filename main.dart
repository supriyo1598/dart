import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: StopWatchScreen(),
    );
  }
}

class StopWatchScreen extends StatefulWidget {
  _StopWatchScreenState createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  late Stopwatch _stopwatch;
  late Timer _timer;

  String _etime = '00:00:00';

  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
  }

  void _startTimer() {
    //Chnging the state in every Seccond
    _timer = Timer.periodic(Duration(microseconds: 100), (timer) {
      setState(() {
        _etime = _formatElapsedTime(_stopwatch.elapsed);
      });
    });
  }

  String _formatElapsedTime(Duration duration) {
    String hours = duration.inHours.toString().padLeft(2, '0');
    String min = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String sec = (duration.inSeconds % 60).toString().padLeft(2, '0');

    return '$hours:$min:$sec';
  }

  void _startStopWatch() {
    setState(() {
      _stopwatch.start();
    });
    _startTimer();
  }

  void _stopStopWatch() {
    setState(() {
      _stopwatch.stop();
    });
    _timer.cancel();
  }

  void _resetStopWatch() {
    setState(() {
      _stopwatch.reset();
      _etime = '00:00:00';
    });
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('StopWatch')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_etime,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _stopwatch.isRunning ? null : _startStopWatch,
                  child: Text('Start'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _stopwatch.isRunning ? _stopStopWatch : null,
                  child: Text('Stop'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: _resetStopWatch,
                  child: Text('Reset'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
