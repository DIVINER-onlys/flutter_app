import 'package:flutter/material.dart';
import 'popup_menu_button_demo.dart';
import 'form_demo.dart';
import 'checkbox_demo.dart';
import 'date_time_demo.dart';
import 'simple_dialog_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MaterialComponents')),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
          ListItem(title: 'DateTime', page: DateTimeDemo()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'PupupMenuButton', page: PupupMenuButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo())
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('flatButton'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('flatButton'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget raisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0)
              // )
              shape: StadiumBorder()
            )
          ),
          child: RaisedButton(
            child: Text('RaisedButton'),
            onPressed: (){},
            splashColor: Colors.grey,
            elevation: 0.0,
            textColor: Colors.white,
            color: Colors.lightBlue,
          ),
        ),
        SizedBox(width: 16.0,),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('RaisedButton'),
          onPressed: (){},
          splashColor: Colors.grey,
          elevation: 12.0,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0)
              // )
              shape: StadiumBorder()
            )
          ),
          child: OutlineButton(
            child: Text('OutlineButton'),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black
            ),
            textColor: Colors.white,
            color: Colors.lightBlue,
            highlightColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0,),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('OutlineButton'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );

    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250.0,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('OutlineButton'),
            onPressed: (){},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        )
      ],
    );

    final Widget expandButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          flex: 2,
          child: OutlineButton.icon(
            icon: Icon(Icons.add),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('ButtonDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandButtonDemo
          ],
        ),
      ),
    );
  }
}

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WidgetDemo')),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  final Widget _floatingActionButtonDemo = FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(30.0)
    // ),
  );
  final Widget _FloatingActionButtonExtented = FloatingActionButton.extended(
    onPressed: (){},
    icon: Icon(Icons.add),
    label: Text('Add'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FloatingActionButtonDemo')),
      floatingActionButton: _floatingActionButtonDemo,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page
          )
        );
      },
    );
  }
}