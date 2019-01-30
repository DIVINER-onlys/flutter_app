import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'apple',
    'banana',
    'lemon'
  ];
  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChipDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 28.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('linhaoran'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('然'),
                  ),
                ),
                Chip(
                  label: Text('linhaoran'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSQcxyDYudUljUAmzJ6uN_hszlhUFYLE1o_Fn9_KX55McGApFz'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return Chip(
                      label: Text(tag),
                      onDeleted: (){
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return ActionChip(
                      label: Text(tag),
                      onPressed: (){
                        setState((){
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value){
                        setState((){
                          if(_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.black,
                      selected: _choice == tag,
                      onSelected: (value){
                        setState((){
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState((){
            _tags = [
              'apple',
              'banana',
              'lemon'
            ];
            _selected = [];
            _choice = 'lemon';
          });
        },
      ),
    );
  }
}