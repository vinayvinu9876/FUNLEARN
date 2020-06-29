import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget{

     double height,width;
    EdgeInsets margin;
    Alignment alignment;
    BuildContext context;
    String path;
    double iconSize;
    Color iconColor;

    GoBackButton({Key key,
                @required this.height,
                @required this.width,
                @required this.alignment,
                @required this.context,
                this.margin,
                @required this.path,
                @required this.iconSize,
                @required this.iconColor,
              });

    @override
    Widget build(BuildContext build){
        return new Container(
                    width : width ,
                    height: height,
                    margin: margin,
                    alignment: alignment,
                    child :IconButton (
                            icon: Icon(
                              Icons.chevron_left,
                              color : iconColor,
                              size : iconSize,
                              semanticLabel: 'Go Back',
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, path);
                            },
                          )
                  );
    }
}