import 'package:flutter/material.dart';
import 'package:resapp/components/Drawer.dart';
import 'package:resapp/components/MenuButton.dart';
import 'package:resapp/components/BottomNavBarWidget.dart';

class StoryPage extends StatefulWidget{
  @override
  _StoryPage createState()=> _StoryPage();
}

class _StoryPage extends State<StoryPage>{
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
                                        child : Text("Reading",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,letterSpacing: 1.5,fontFamily: 'raleway'),),
                                    )
                                  ],
                                ),
                                SizedBox(height:height*0.02),
                                Container(
                                  width : width ,
                                  height: height * 0.765,
                                  color :  Color(0xFFf2f2f2),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      item(height,width,"Stories","25 Stories to read",'images/story_icon.png','/storylist'),
                                      item(height,width,"Poem","45 Poems to enjoy",'images/poem.jpeg',null),
                                      item(height,width,"Passage","2 to enrich knowledge",'images/passage.png',null),
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

  Widget item(double height,double width,String title,String subtitle,String imagepath,String path){
    return 
      InkWell(
          onTap : ()=>Navigator.pushNamed(context, path),
           child :  Container(
              width: width ,
              height: height * .2,
              margin: EdgeInsets.symmetric(vertical:10,horizontal:10),
              child : Card(
              elevation: 10,
              color : Colors.white,
              shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                    padding : EdgeInsets.symmetric(horizontal:20,vertical: 8),
                    child : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              
                                Image(image:AssetImage(imagepath),width:80),
                                SizedBox(width: width*0.05,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("$title",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                    SizedBox(height:height*0.01),
                                    Text("$subtitle")
                                  ],
                                )
                               
                                
                              ],
                            ),
                          )
                        )
                      )
      );
  }
}