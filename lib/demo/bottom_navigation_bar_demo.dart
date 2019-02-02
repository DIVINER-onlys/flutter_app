import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class BottomNavigationBarDemo extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _BottomNavigationBarDemoState();
    }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler (int index) {
    // debugPrint('$index');
    setState(() {
      _currentIndex = index;
    });
  }
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ScopedModelDescendant<HomeIndexModel>(
        builder: (context, _, model) => 
        BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            model.changeHomeIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My')
            ),
          ],
        ),
      );
    } 
}

class HomeIndexModel extends Model {
  int _homeIndex = 0;
  int get homeIndex => _homeIndex;

  void changeHomeIndex (value) {
    print('bottom_navigator_bar 索引: $value');
    _homeIndex = value;
    notifyListeners();
  }
}