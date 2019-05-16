import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prelogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {  
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    _bottomButtons(String buttonText) => ButtonTheme(
      minWidth: width*0.49,
      height: height*0.10,
      child: RaisedButton(
        onPressed: () {},
        color: Colors.deepPurple,
        child: new Text(
            '$buttonText',
            style: TextStyle(
            color: Theme.of(context).accentColor,
            fontSize: 30,
            ),
        ),
      ),
    ); 

    _topDivider() => Container(
      height: width *0.02,
      width: width,
      color: Theme.of(context).accentColor,    
    );

    _verticalDivider() => Container(
      height: height * 0.10,
      width: width * 0.02,
      color: Theme.of(context).accentColor,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).buttonColor,
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("lib/Assets/hookah_express.png",
          alignment: Alignment.centerRight, 
          height: height*0.88,
          width: width*0.9,
          ),
          Column(
            children: <Widget>[
              _topDivider(),
              Row(
                children: <Widget>[
                  _bottomButtons("Sign In"),
                  _verticalDivider(),
                  _bottomButtons("Sign Up"),
                ],
              )
            ]
          )
        ], 
        )
    );
  }
}
