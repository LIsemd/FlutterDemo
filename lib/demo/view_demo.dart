import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget{
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
      itemBuilder: _gridItemBuilder
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
//      crossAxisCount: 3,
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: <Widget>[
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        )
      ],
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: <Widget>[
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Text(
            'Item',
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey
            ),
          ),
        )
      ],
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                  posts[index].author
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
//    pageSnapping: false,
//    reverse: true,
//    scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.indigo,
          alignment: Alignment.center,
          child: Text(
            'One',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w300
            ),
          ),
        ),
        Container(
          color: Colors.amber,
          alignment: Alignment.center,
          child: Text(
            'Two',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w300
            ),
          ),
        ),
        Container(
          color: Colors.cyan,
          alignment: Alignment.center,
          child: Text(
            'Three',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w300
            ),
          ),
        ),
      ],
    );
  }
}