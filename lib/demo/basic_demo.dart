import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://pic.netbian.com/uploads/allimg/190524/213312-155870479257e3.jpg'),
          alignment: Alignment.topCenter,
//          repeat: ImageRepeat.repeat
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.indigoAccent[100].withOpacity(0.5), BlendMode.hardLight)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white),
//            color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                  color: Colors.indigoAccent,
                  width: 3.0,
                  style: BorderStyle.solid
              ),
//              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 16.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,
                  spreadRadius: -9.0
                )
              ],
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ]
              )
//              gradient: LinearGradient(
//                colors: [
//                    Color.fromRGBO(7, 102, 255, 1.0),
//                    Color.fromRGBO(3, 28, 128, 1.0),
//                ],
//                begin: Alignment.topCenter,
//                end: Alignment.bottomCenter
//              )
            ),
          ),
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'hello',
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100
        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey
            )
          )
        ]
      ),
    );
  }
}
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _title = '秒速五厘米';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《 $_title 》我到底要用怎么样的速度生活才能与你再次相遇。总是止不住的回忆起已经过去很久的事。好像有时候就是无论你再怎么去追赶他的脚步你也始终跟不上。',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}