import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.threed_rotation),
          label: Text('Button'),
          onPressed: () {},
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
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5.0)
//                      )
                  shape: StadiumBorder()
              )
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey,
            textColor: Theme.of(context).accentColor,
          ),
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          icon: Icon(Icons.threed_rotation),
          label: Text('Button'),
          onPressed: () {},
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
//                      shape: BeveledRectangleBorder(
//                        borderRadius: BorderRadius.circular(5.0)
//                      )
                  shape: StadiumBorder()
              )
          ),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
//                    textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
                color: Colors.black38
            ),
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0),
        OutlineButton.icon(
          icon: Icon(Icons.threed_rotation),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        )
      ],
    );
    final Widget fixedWidthButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
//                    textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
                color: Colors.black38
            ),
            highlightedBorderColor: Colors.grey,
          ),
        )
      ],
    );
    final Widget expandedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
//                    textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
                color: Colors.black38
            ),
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100],
//                    textColor: Theme.of(context).accentColor,
            borderSide: BorderSide(
                color: Colors.black38
            ),
            highlightedBorderColor: Colors.grey,
          ),
        )
      ],
    );
    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ButtonBar(
          children: <Widget>[
            OutlineButton(
              child: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey[100],
//                    textColor: Theme.of(context).accentColor,
              borderSide: BorderSide(
                  color: Colors.black38
              ),
              highlightedBorderColor: Colors.grey,
            ),
            OutlineButton(
              child: Text('Button'),
              onPressed: () {},
              splashColor: Colors.grey[100],
//                    textColor: Theme.of(context).accentColor,
              borderSide: BorderSide(
                  color: Colors.black38
              ),
              highlightedBorderColor: Colors.grey,
            ),
          ],
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandedButtonDemo,
            buttonBarDemo
          ],
        ),
      ),
    );
  }
}
