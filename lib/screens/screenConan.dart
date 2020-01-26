import 'package:flutter/material.dart';

class screenConan extends StatefulWidget {
  @override
  _screenConanState createState() => _screenConanState();
}

class _screenConanState extends State<screenConan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Image.asset('images/backImage.jpeg'),),
    );
  }
}
