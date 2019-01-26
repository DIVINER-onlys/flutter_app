import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // IconBadge(Icons.pool),
        // IconBadge(Icons.beach_access, size: 64.0),
        // IconBadge(Icons.airplanemode_active),
        // StackDemo(),
        // AspectRatioDemo(),
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 200.0,
            maxWidth: 200.0
          ),
          child: Container(
            color: Color.fromRGBO(3, 54, 255, 1.0),
          ),
        )
      ],
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0/9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            // alignment: Alignment(1.0, -1.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(8.0)
            )
          ),
        ),
        SizedBox(
          height: 32.0,
        ),
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Icon(Icons.brightness_2, color: Colors.white, size: 32.0)
          ),
        ),
        Positioned(
          right: 20.0,
          top: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)
        ),
        Positioned(
          right: 120.0,
          bottom: 20.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)
        ),
        Positioned(
          left: 60.0,
          top: 120.0,
          child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;
  final double size;
  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Container(
        child: Icon(icon, size: size, color: Colors.white),
        width: size+60,
        height: size+60,
        color: Color.fromRGBO(3, 54, 255, 1.0),
      );
    }
}