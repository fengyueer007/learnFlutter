import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: true,//倒序
      scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) => debugPrint('page$currentPage'),
      controller: PageController(
        initialPage: 1,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment.center,
          child: Text('ONE', style: TextStyle(color: Colors.white,fontSize: 32.0),),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment.center,
          child: Text('TWO', style: TextStyle(color: Colors.white,fontSize: 32.0),),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment.center,
          child: Text('THREE', style: TextStyle(color: Colors.white,fontSize: 32.0),),
        ),
        Container(
          color: Colors.red[900],
          alignment: Alignment.center,
          child: Text('FOUR', style: TextStyle(color: Colors.white,fontSize: 32.0),),
        )
      ],
    );
  }
}