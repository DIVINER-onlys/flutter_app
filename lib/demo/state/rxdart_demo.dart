import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RxDartDemo'), elevation: 0.0,),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _textFieldSubject;

  @override
    void initState() {
      // TODO: implement initState
      super.initState();

      _textFieldSubject = PublishSubject<String>();
      // _textFieldSubject.listen((data) => print(data));
      _textFieldSubject
        // .map((item) => 'item: $item')
        // .where((item) => item.length > 9)
        .debounce(Duration(milliseconds: 500))
        .listen((data) => print(data));

      // Observable<String> _observable =
      //   // Observable(Stream.fromIterable(['hello', '您好']));
      //   // Observable.fromFuture(Future.value('Hello ~'));
      //   // Observable.fromIterable(['hello', '你好']);
      //   // Observable.just('hello');
      //   Observable.periodic(Duration(seconds: 3), (x) => x.toString());
      // _observable.listen(print);

      // PublishSubject<String> _subject = PublishSubject<String>();
      // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);

      // _subject.add('halo');
      // _subject.add('hello');
      // _subject.add('hi');

      // _subject.listen((data) => print('listen 1: $data'));
      // _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));

      // _subject.close();
    }
    @override
      void dispose() {
        // TODO: implement dispose
        super.dispose();
        _textFieldSubject.close();
      }
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black
      ),
      child: TextField(
        onChanged: (value) {
          _textFieldSubject.add('input: $value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit: $value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true
        ),
      ),
    );
  }
}