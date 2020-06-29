import 'package:flutter/material.dart';
import 'package:resapp/components/ThemeMaker.dart';


class DrawerWidget extends StatelessWidget{

    DrawerWidget({@required this.width,@required this.index});
    double width;
    int index;

    Widget listTitle(String name,int myindex,IconData icon,VoidCallback onpress){
      bool active = (index==myindex);
      return InkWell(
            onTap : onpress,
            child : Container(
              color : active?getActiveColor():Colors.transparent,
              padding : EdgeInsets.only(left:20.0,top:12.5,bottom:12.5),
              child :
                Row(
                  children : [
                    Icon(
                      icon,
                      size : 25,
                      color : active?getDarkColor():Color(0xff666666),
                      
                    ),
                    SizedBox(width:width*0.05),
                    Text(
                        name, 
                        style : TextStyle(
                                      fontSize: active ?16:15,
                                      color: active ? getDarkColor() : Color(0xff666666),
                                      fontWeight: active ? FontWeight.bold : FontWeight.normal
                                  ),
                    ),
                  ]
                  
                )
              )
           ) ;
    }


    void onPress(BuildContext context,String name){
          //Navigator.pushNamed(context, name);
    }


    Widget build(BuildContext context){

      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return 
      SizedBox(
          width : width*0.80,
          child : Drawer(
          elevation: 20.0,
          child : Column(
          children: [ 
            Container(
                width: width,
                height :height*0.35,
                decoration: BoxDecoration(
                            gradient: LinearGradient(colors: getGradientColor()),
                ),
                child: DrawerHeader(
                  child: Container(
                      
                      child :
                            
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Card( 
                                  child: Image(image:AssetImage('images/logo.png'),width:80),
                                  elevation: 18.0,
                                  shape: CircleBorder(),
                                        clipBehavior: Clip.antiAlias,

                                ),
                                SizedBox(height:height*0.02),
                                Text("RES School",
                                  style:TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0
                                    
                                  )
                                ),
                              ]
                            ),               
                  )
                ),
              ),
            
            Container(
            height : height * .65,
            
            child : ListView(
                children: [
                listTitle("Home",1,Icons.home,(){onPress(context,'/home');}),
                listTitle("Maths Workout",2,Icons.filter_1 ,(){onPress(context,'/wallet');}),
                listTitle("Grade wise",3,Icons.local_library ,(){onPress(context,'/profile');}),
                listTitle("Lecture Videos",4,Icons.video_library,(){onPress(context,'/history');}),
                listTitle("FAQ",5,Icons.not_listed_location,(){onPress(context,'/chat');}),
                listTitle("Whats New",6,Icons.explore,(){onPress(context,'/chat');}),
                listTitle("Exit",7,Icons.exit_to_app,(){print("Home");}),
              ]
            )
          ),
            
          ],
        ),
        )
      );
    }
}
