import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamDemo'), elevation: 0.0),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamDemoSubscription;
  StreamController<String> _streamDemo;
  StreamSink _sinkDemo;
  String _data = '...';

  @override
    void dispose() {
      // TODO: implement dispose
      _streamDemo.close();
      super.dispose();
    }

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      print('Create a Stream.');
      // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
      // _streamDemo = StreamController<String>();
      _streamDemo = StreamController.broadcast();
      _sinkDemo = _streamDemo.sink;

      print('Start listening on a stream.');
      _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
        _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);
      print('Initial Complete');
    }

  void onError(error) {
    print('Error: $error');
  }
  void onDone(){
    print('Done!');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void _pauseStream() {
    print('Pause subscription');
    _streamDemoSubscription.pause();
  }
  void _resumeStream() {
    print('Resume subscription');
    _streamDemoSubscription.resume();
  }
  void _cancelStream() {
    print('Cancel subscription');
    _streamDemoSubscription.cancel();
  }

  void _addDataToStream() async {
    print('Add data to stream.');

    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }
  
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    print('测试什么时候输出');
    // throw 'Something Error!';
    return 'hello ~';
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text(_data),
          StreamBuilder(
            stream: _streamDemo.stream,
            initialData: '...',
            builder: (context, snapshot) {
              return Text('${snapshot.data}');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Add'),
                onPressed: _addDataToStream,
              ),
              FlatButton(
                child: Text('Pause'),
                onPressed: _pauseStream,
              ),
              FlatButton(
                child: Text('Resume'),
                onPressed: _resumeStream,
              ),
              FlatButton(
                child: Text('Cancel'),
                onPressed: _cancelStream,
              ),
            ],
          ),
        ],
      )
      
    );
  }
}