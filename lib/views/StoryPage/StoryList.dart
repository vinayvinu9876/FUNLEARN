import 'package:flutter/material.dart';
import 'package:resapp/components/Drawer.dart';
import 'package:resapp/components/MenuButton.dart';
import 'package:resapp/components/BottomNavBarWidget.dart';

class StoryList extends StatefulWidget{
  @override
  _StoryList createState()=> _StoryList();
}

class _StoryList extends State<StoryList>{
  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return Scaffold(
           drawer: DrawerWidget(width: width,index:1),
           bottomNavigationBar: BottomNavBarWidget(currentIndex: 1,),
            body: Builder(
              builder:(context)=> 
              Hero(
                  tag : "story",
                  child : SingleChildScrollView(
                  child :  Stack(
                    children: <Widget>[
                        Container(
                        child: Column(
                               children:[
                                 SizedBox(height:height*0.05),
                                  Row(children: [
                                    menubutton(color:Colors.black,onpressed: ()=>Scaffold.of(context).openDrawer(),),
                                    Padding(
                                        padding : EdgeInsets.only(top:7),
                                        child : Text("English Stories",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,letterSpacing: 1.5,fontFamily: 'raleway'),),
                                    )
                                  ],
                                ),
                                SizedBox(height: height*0.02,),
                                Container(
                                  width : width,
                                  color :Color(0xFFf2f2f2) ,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [

                                      //listItem(height,width,"A WoodCutter and the Axe","Long ago, there lived...","1","images/woodcutter.jpg",null),
                                      listItem(height,width,"A Thirsty Crow","On a hot day a thirsty...","1","images/thirsty_crow.jpg","/storyfull"),
                                      //listItem(height,width,"Tenali Rama and Brinjal Curry","Tenali rama was an...","3","images/tenalirama.jpg",null),
                                      //listItem(height,width,"A Fox and a Goat","Once upon a time...","4","images/fox_and_goat.jpg",null),
                                    ],
                                  ),
                                )
                              ]
                        )
                      )
                    ]
                  )
                  )
            )
        )
        );
  }
  

  Widget listItem(double height,double width,String title,String subtitle,String no,String imagepath,String path){
    return 
      InkWell(
          onTap : ()=>Navigator.pushNamed(context, path),
           child :  Container(
              height: height * .25,
              margin: EdgeInsets.symmetric(vertical:10,horizontal:10),
              child : Card(
              elevation: 10,
              color : Colors.white,
              shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
              ),
              child:  Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                elevation: 15,
                                child :  Image(image:AssetImage(imagepath),width:100,height:140,fit:BoxFit.fill),
                              ),
                               
                                SizedBox(width: width*0.05,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: height * 0.07,
                                      width: width * 0.5,
                                      child: Text("$title",overflow: TextOverflow.ellipsis, maxLines: 3,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),),
                                    ),
                                    SizedBox(height : height*0.01),
                                    Text("$subtitle",overflow: TextOverflow.ellipsis, maxLines: 3),
                                    SizedBox(height:height*0.01),
                                    Text("Story $no",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
                                  ],
                                )
                               
                                
                              ],
                            ),
                          )
                        )
                      
      );
  }
}