import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/botton_navigation_bar.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';
import './demo/layout_demo.dart';
import './demo/view_demo.dart';
import './demo/sliver_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverDemo(),
      theme: ThemeData(
          primaryColor: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70
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
          title: Text('Demo'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_airport)),
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.queue)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
