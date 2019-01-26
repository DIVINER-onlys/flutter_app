import 'package:flutter/material.dart';
import 'dart:ui';
class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 约束盒子组件，添加额外的限制条件child上
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network('https://i0.hdslb.com/bfs/sycp/creative_img/201901/a37ab96798257b97be18d4e59782f470.jpg'),
          ),
          Center(
            child: ClipRect(
              // 可裁切的矩形
              child: BackdropFilter(
                // 背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color:Colors.grey.shade200), // 盒子修饰器
                    child: Center(
                      child: Text('Hello Filter',
                      style: Theme.of(context).textTheme.display3,),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}