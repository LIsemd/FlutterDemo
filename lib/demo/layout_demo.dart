import 'package:flutter/material.dart';


class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Colors.indigoAccent,
            ),
          ),
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0/9.0,
            child: Container(
              color: Color.fromRGBO(3, 53, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
//          IconBadge(Icons.person),
//          IconBadge(Icons.label),
//          IconBadge(Icons.query_builder),
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 240.0,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
                      borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
//              SizedBox(
//                height: 32.0,
//              ),
              SizedBox(
                width: 100.0,
                height: 120.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 54, 255, 1.0),
//                      borderRadius: BorderRadius.circular(8.0)
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(Icons.favorite, color: Colors.white, size: 32.0),
              ),
              Positioned(
                right: 10.0,
                top: 50.0,
                child: Icon(Icons.favorite, color: Colors.white, size: 32.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white,),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}