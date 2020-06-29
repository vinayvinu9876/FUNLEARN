import 'package:flutter/material.dart';


class menubutton extends StatelessWidget{
    menubutton({Key key,this.color,this.onpressed})  : super(key: key);

    Color color;
    Function onpressed;

    Widget build(BuildContext context){
      return InkWell(
      onTap: onpressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5, top: 10, bottom: 0),
              child: Icon(
                          Icons.apps,
                          color: color,
                          size: 25.0,
                    ),
            ),
            
          ],
        ),
      ),
    );
    }
}

