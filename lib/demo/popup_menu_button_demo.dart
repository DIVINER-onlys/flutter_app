import 'package:flutter/material.dart';

class PupupMenuButtonDemo extends StatefulWidget {
  @override
  _PupupMenuButtonDemoState createState() => _PupupMenuButtonDemoState();
}

class _PupupMenuButtonDemoState extends State<PupupMenuButtonDemo> {
  String _currentMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PupupMenuButtonDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$_currentMenuItem'),
                PopupMenuButton(
                  onSelected: (value) {
                    debugPrint(value);
                    setState(() {
                      _currentMenuItem = value;
                      debugPrint(_currentMenuItem);
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'Discover',
                      child: Text('Discover'),
                    ),
                    PopupMenuItem(
                      value: 'Community',
                      child: Text('Community'),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}