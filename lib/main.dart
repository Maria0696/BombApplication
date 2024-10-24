// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bomb App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: _BombPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _BombPage extends StatefulWidget {
  @override
  _BombPageState createState() => _BombPageState();
}

class _BombPageState extends State<_BombPage> {
  int _pressCount = 0;
  bool _exploded = false;

  void _handlePress() {
    setState(() {
      _pressCount++;
      if (_pressCount >= 5) {
        _exploded = true;
      }
    });
  }

  void _resetBomb() {
    setState(() {
      _pressCount = 0;
      _exploded = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bomb Application'),
      ),
      body: Center(
        child: _exploded
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '💥 The bomb exploded! 💥',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _resetBomb,
                    child: Text('Reset'),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Press the button 5 times before it explodes: ',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '$_pressCount / 5',
                    style: TextStyle(fontSize: 36),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _handlePress,
                    child: Icon(Icons.history),
                  ),
                ],
              ),
      ),
    );
  }
}
