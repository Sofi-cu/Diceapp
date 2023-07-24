import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageChangeScreen(),
    );
  }
}

class ImageChangeScreen extends StatefulWidget {
  @override
  _ImageChangeScreenState createState() => _ImageChangeScreenState();
}

class _ImageChangeScreenState extends State<ImageChangeScreen> {
  int _currentImageIndex = 0;
  List<String> _images = [
    "assets/dice1.png",
    "assets/dice2.png",
    "assets/dice3.png",
    "assets/dice4.png",
    "assets/dice5.png",
    "assets/dice6.png",
    // Add more image paths if necessary
  ];

  void _changeImage() {
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Dice App'),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: GestureDetector(
          onTap: _changeImage,
          child: Image.asset(_images[_currentImageIndex]),
        ),
      ),
    );
  }
}
