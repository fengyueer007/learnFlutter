import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
// import 'demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.2),
        splashColor: Colors.red,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () => debugPrint('Search button is pressed.'),
                tooltip: 'Search',
              )
            ],
            title: Text('NIHAO'),
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5.0,
            ),
          ),
          body: TabBarView(children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
      )
    );
  }
}
