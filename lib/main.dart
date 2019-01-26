// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.display1,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }


// // 2019.01.21 第一季
// // 引入库
// import 'package:flutter/material.dart';
// // 主入口
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext content) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter')
//         ),
//         body: Center(
//           child: Text('Hello World')
//         )
//       )
//     );
//   }
// }


// 2019.01.21 第二季
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Text Widget',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Hello Widget')),
//         body: Center(
//           // child: Text(
//           //   'Hello Widget! Welcome to Flutter World, you will love this place, i hope you will get many thing, have funning time',
//           //   textAlign: TextAlign.left,
//           //   maxLines: 1,
//           //   overflow: TextOverflow.ellipsis,
//           //   style: TextStyle(
//           //     fontSize: 25.0,
//           //     color: Color.fromARGB(255, 255, 125, 125),
//           //     decoration: TextDecoration.underline,
//           //     decorationStyle: TextDecorationStyle.solid
//           //   ),
//           // ),
//           // child: Container(
//           //   child: Text('Hello JSPang', style: TextStyle(fontSize: 40.0),),
//           //   alignment: Alignment.topRight,
//           //   width: 400.0,
//           //   height: 400.0,
//           //   // color: Colors.lightBlue,
//           //   padding: const EdgeInsets.fromLTRB(100.0, 20.0, 40.0, 20.0),
//           //   margin: const EdgeInsets.all(20.0),
//           //   decoration: BoxDecoration(
//           //     gradient: const LinearGradient(
//           //       colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]
//           //     ),
//           //     border: Border.all(width: 2.0, color: Colors.red)
//           //   ),
//           // ),
//           child: Container(
//             child: Image.network(
//               'http://i1.fuimg.com/10086/eaa0ee952596b9cd.png',
//               fit: BoxFit.contain,
//               color: Colors.greenAccent,
//               colorBlendMode: BlendMode.darken,
//               repeat: ImageRepeat.noRepeat,
//             ),
//             width: 400.0,
//             height: 200.0,
//             color: Colors.lightBlue,
//           ),
//         ),
//       )
//     );
//   }
// }


// 2019.01.22 第二季
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp(
//   items: new List<String>.generate(1000, (i) => "Item $i")
// ));
// class MyApp extends StatelessWidget{
//   final List<String> items;
//   MyApp({Key key, @required this.items}):super(key:key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter Demo')),
//         // body: ListView(
//         //   children: <Widget>[
//         //     ListTile(
//         //       leading: Icon(Icons.access_alarms),
//         //       title: Text('access_alarms'),
//         //     ),
//         //     ListTile(
//         //       leading: Icon(Icons.close),
//         //       title: Text('close'),
//         //     ),
//         //     ListTile(
//         //       leading: Icon(Icons.tab_unselected),
//         //       title: Text('tab_unselected'),
//         //     ),
//         //     Image.network('http://i1.fuimg.com/10086/eaa0ee952596b9cd.png'),
//         //     ListTile(
//         //       leading: Icon(Icons.table_chart),
//         //       title: Text('table_chart'),
//         //     )
//         //   ],
//         // ),
//         // body: Center(
//         //   child: Container(
//         //     height: 200.0,
//         //     child: MyList()
//         //   ),
//         // ),
//         body: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index){
//             return ListTile(
//               leading: Icon(Icons.satellite),
//               title: Text('${items[index]}'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// class MyList extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal,
//       children: <Widget>[
//         Container(
//           width: 180.0,
//           color: Colors.lightBlue,
//         ),
//         Container(
//           width: 180.0,
//           color: Colors.yellowAccent,
//         ),
//         Container(
//           width: 180.0,
//           color: Colors.deepOrange,
//         ),
//         Container(
//           width: 180.0,
//           color: Colors.purpleAccent,
//         )
//       ],
//     );
//   }
// }


// 2019.01.22 第二季
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'GridView Demo',
//       home: Scaffold(
//         appBar: AppBar(title: Text('GridView Demo')),
//         // body: GridView.count(
//         //   padding: const EdgeInsets.all(20.0),
//         //   crossAxisSpacing: 10.0,
//         //   crossAxisCount: 3,
//         //   children: <Widget>[
//         //     const Text('I am SAM1I am SAM1'),
//         //     const Text('I am SAM2I am SAM1'),
//         //     const Text('I am SAM3I am SAM1'),
//         //     const Text('I am SAM4I am SAM1'),
//         //     const Text('I am SAM5I am SAM1'),
//         //   ],
//         // )
//         body: GridView(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 2.0,
//             crossAxisSpacing: 2.0,
//             childAspectRatio: 0.7
//           ),
//           children: <Widget>[
//             new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
//             new Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
//           ],
//         ),
//       ),
//     );
//   }
// }


// 2019.01.23 第三季
// import 'package:flutter/material.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     var stack = new Stack(
//       // alignment: const FractionalOffset(0.5, 0.8),
//       children: <Widget>[
//         CircleAvatar(
//           backgroundImage: NetworkImage('http://jspang.com/static/myimg/WechatIMG12.jpeg'),
//           radius: 100.0,
//         ),
//         // Container(
//         //   decoration: BoxDecoration(
//         //     color: Colors.lightBlue
//         //   ),
//         //   padding: EdgeInsets.all(5.0),
//         //   child: Text('hello world'),
//         // )
//         Positioned(
//           top: 10.0,
//           left: 10.0,
//           child: Text('hello world'),
//         ),
//         Positioned(
//           bottom: 20.0,
//           right: 20.0,
//           child: Text('hello world i am right'),
//         )
//       ],
//     );
//     var card = new Card(
//       child: Column(
//         children: <Widget>[
//           ListTile(
//             leading: Icon(Icons.scatter_plot, color: Colors.lightBlue,),
//             title: Text('广东省广州市番禺区', style: TextStyle(fontWeight:FontWeight.w500)),
//             subtitle: Text('广州大学:1122344')
//           ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.scatter_plot, color: Colors.lightBlue,),
//             title: Text('广东省广州市天河区', style: TextStyle(fontWeight:FontWeight.w500)),
//             subtitle: Text('正佳广场:1122344')
//           ),
//           Divider(),
//           ListTile(
//             leading: Icon(Icons.scatter_plot, color: Colors.lightBlue,),
//             title: Text('广东省广州市海珠区', style: TextStyle(fontWeight:FontWeight.w500)),
//             subtitle: Text('广州大学:1122344')
//           )
//         ],
//       ),
//     );
//     return MaterialApp(
//       title: 'Row Widget Demo',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Row Column Widget Demo')),
//         // body: Row(
//         //   children: <Widget>[
//         //     Expanded(child: RaisedButton(
//         //       onPressed: (){},
//         //       color: Colors.redAccent,
//         //       child: Text('红色按钮'),
//         //     )),
//         //     Expanded(child: RaisedButton(
//         //       onPressed: (){},
//         //       color: Colors.orangeAccent,
//         //       child: Text('橙色按钮sssssss'),
//         //     )),
//         //     RaisedButton(
//         //       onPressed: (){},
//         //       color: Colors.blue,
//         //       child: Text('蓝色按钮'),
//         //     )
//         //   ],
//         // ),
//         // body: Center(
//         //   child: Column(
//         //     crossAxisAlignment: CrossAxisAlignment.start,
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     children: <Widget>[
//         //       Text('i am first Column text'),
//         //       Expanded(child: Text('i am second Column text lalalalalalala'),),
//         //       Text('i am third Column text'),
//         //     ],
//         //   ),
//         // )
//         body: Center(
//           child: card,
//         ),
//       ),
//     );
//   }
// }

// 2019.01.23 第四季
// import 'package:flutter/material.dart';
// void main() {
//   runApp(MaterialApp(
//     title: '导航演示001',
//     home: new FirstScreen(),
//   ));
// }
// class FirstScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('导航演示')),
//       body: Center(
//         child: RaisedButton(
//           child: Text('查看商品详情页'),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(
//               builder: (context) => new SecondScreen()
//             ));
//           }
//         ),
//       )
//     );
//   }
// }
// class SecondScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: Text('商品详情页')),
//       body: Center(
//         child: RaisedButton(
//           child: Text('返回'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }


// // 2019.01.23 第四季
// import 'package:flutter/material.dart';
// class Product{
//   final String title; // 商品标题
//   final String description; // 商品描述
//   Product(this.title, this.description);
// }
// void main() {
//   runApp(MaterialApp(
//     title: '导航数据传递和接收',
//     home: ProductList(
//       products: List.generate(20, (i) => Product('商品 $i', '这是一个商品详情，编号为 $i'))
//     )
//   ));
// }
// class ProductList extends StatelessWidget{
//   final List<Product> products;
//   ProductList({Key key, @required this.products}):super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('商品列表')),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index){
//           return ListTile(
//             title: Text(products[index].title),
//             onTap: (){
//               Navigator.push(context, MaterialPageRoute(
//                 builder: (context) => ProductDetail(product: products[index])
//               ));
//             },
//           );
//         },
//       ),
//     );
//   }
// }
// class ProductDetail extends StatelessWidget{
//   final Product product;
//   ProductDetail({Key key, @required this.product}):super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('${product.title}')),
//       body: Center(
//         child: Text('${product.description}'),
//       ),
//     );
//   }
// }


// // 2019.01.23 第四季
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(
//     title: '页面跳转返回数据',
//     home: FirstPage(),
//   ));
// }
// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('要电话')),
//       body: Center(
//         child: RouteButton(),
//       )
//     );
//   }
// }
// class RouteButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       child: Text('去找小姐姐'),
//       onPressed: (){
//         _navigateToXiaoJieJie(context);
//       },
//     );
//   }
//   _navigateToXiaoJieJie(BuildContext context) async{
//     final result = await Navigator.push(context, MaterialPageRoute(
//       builder: (context) => XiaoJieJie()
//     ));

//     Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
//   }
// }
// class XiaoJieJie extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('给电话')),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             RaisedButton(
//               child: Text('大长腿小姐姐'),
//               onPressed: (){
//                 Navigator.pop(context, '大长腿小姐姐： 15692438386');
//               },
//             ),
//             RaisedButton(
//               child: Text('小蛮腰小姐姐'),
//               onPressed: (){
//                 Navigator.pop(context, '小蛮腰小姐姐： 15692438886');
//               },
//             )
//           ],
//         ),
//       )
//     );
//   }
// }


// 2019/1/23
// import 'package:flutter/material.dart';
// import 'bottom_navigation_widget.dart';

// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Flutter bottom Navigation Bar',
//       theme: ThemeData.light(),
//       home: BottomNavigationWidget(),
//     );
//   }
// }


// // 2019/1/24
// import 'package:flutter/material.dart';
// import 'bottom_appBar_demo.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo2',
//       // 自定义主题样本
//       theme: ThemeData(
//         primarySwatch: Colors.red
//       ),
//       home: BottomAppBarDemo(),
//     );
//   }
// }


// 2019/1/24
// import 'package:flutter/material.dart';
// import 'pages.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo3',
//       // 自定义主题样本
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//       home: FirstPage(),
//     );
//   }
// }


// 2019/1/24
// import 'package:flutter/material.dart';
// import 'frosted_glass_demo.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo4',
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue
//       ),
//       home: Scaffold(
//         body: FrostedClassDemo(),
//       )
//     );
//   }
// }


// 2019/1/24
// import 'package:flutter/material.dart';
// import 'keep_alive_demo.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'FLutter Demo5',
//       theme: ThemeData(
//         primarySwatch: Colors.lightBlue
//       ),
//       home: KeepAliveDemo(),
//     );
//   }
// }
// class KeepAliveDemo extends StatefulWidget {
//   @override
//   _KeepAliveDemoState createState() => _KeepAliveDemoState();
// }

// class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {
//   TabController _controller;
//   @override
//   void initState() {
//     super.initState();
//     _controller = TabController(
//       length: 3,
//       vsync: this
//     );
//   }
//   @override
//   void dispose(){
//     _controller.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Keep Alive Demo'),
//         bottom: TabBar(
//           controller: _controller,
//           tabs: <Widget>[
//             Tab(icon: Icon(Icons.directions_car)),
//             Tab(icon: Icon(Icons.directions_transit)),
//             Tab(icon: Icon(Icons.directions_bike))
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _controller,
//         children: <Widget>[
//           MyHomePage(),
//           MyHomePage(),
//           MyHomePage()
//         ],
//       ),
//     );
//   }
// }


// 2019/1/24
// import 'package:flutter/material.dart';
// import 'search_bar_demo.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo6',
//       theme: ThemeData.light(),
//       home: SearchBarDemo(),
//     );
//   }
// }


// 2019/1/24
// import 'package:flutter/material.dart';
// import 'warp_demo.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo7',
//       theme: ThemeData.light(),
//       home: WrapDemo(),
//     );
//   }
// }


// 2019/1/24
// import 'package:flutter/material.dart';
// // import 'expandsion_tile.dart';
// import 'expansion_panel_list.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo8',
//       theme: ThemeData.dark(),
//       // home: ExpansionTileDemo(),
//       home: ExpansionPanelListDemo(),
//     );
//   }
// }



// 2019/1/25
// import 'package:flutter/material.dart';
// import 'custom_clipper.dart';
// void main() =>runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo9',
//       theme: ThemeData.dark(),
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }


// 2019/1/25
// import 'package:flutter/material.dart';
// import 'splash_screen.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title:'Flutter Demo10',
//       theme: ThemeData(
//         primarySwatch: Colors.blue
//       ),
//       home: SplashScreen()
//     );
//   }
// }



// 2019/1/25
// import 'package:flutter/material.dart';
// import 'right_back_demo.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo11',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home:RightBackDemo()
//     );
//   }
// }


// 2019/1/25
// import 'package:flutter/material.dart';
// import 'tool_tip_demo.dart';
// void main() => runApp(MyApp());
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo12',
//       theme: ThemeData.light(),
//       home: ToolTipDemo(),
//     );
//   }
// }

// 2019/1/25
import 'package:flutter/material.dart';
import 'draggable_demo.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo13',
      theme: ThemeData.light(),
      home: DraggableDemo(),
    );
  }
}