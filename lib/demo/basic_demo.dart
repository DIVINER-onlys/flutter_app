import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _author = '李白';
  final String _title = '将进酒';

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Text(
        '《 $_title 》—— $_author。helloh, ellohellohellohell, ohellohellohellohelloheoddfdfdfdf。helloh, ellohellohellohell, ohellohellohellohelloheoddfdfdfdf。helloh, ellohellohellohell, ohellohellohellohelloheoddfdfdfdf',
        textAlign: TextAlign.center,
        style: _textStyle,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      );
    }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Sam',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100
        ),
        children: [
          TextSpan(
            text: '.lin',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey
            )
          )
        ]
      ),
    );
  }
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeat,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0, 5.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 4.0,
                  spreadRadius: -2.0
                )
              ],
              shape: BoxShape.circle,
              // gradient: RadialGradient(
              //   colors: [
              //     Colors.lightBlue,
              //     Colors.pinkAccent
              //   ]
              // )
              gradient: LinearGradient(
                  colors: [
                    Colors.lightBlue,
                    Colors.pinkAccent
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              )
            ),
          )
        ],
      ),
    );
  }
}

