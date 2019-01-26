import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tool Tip Demo'),),
      body: Center(
        child: Tooltip(
          message: '好好好',
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhPavEUE72xrZ-T7677hBErf5E3FjamoXpg5qsiRL9nRr510RNOA'),
        ),
      ),
    );
  }
}