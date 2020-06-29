import 'package:flutter/material.dart';
import 'package:resapp/components/Drawer.dart';
import 'package:resapp/components/MenuButton.dart';
import 'package:resapp/components/BottomNavBarWidget.dart';


class HomePage extends StatefulWidget{
    @override
    _HomePage createState()=> _HomePage();
} 

class _HomePage extends State<HomePage>{

    @override
    Widget build(BuildContext context){
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return Scaffold(
           drawer: DrawerWidget(width: width,index:1),
           bottomNavigationBar: BottomNavBarWidget(currentIndex: 0,),
            body: Builder(
              builder:(context)=>
                  SingleChildScrollView(
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
                                        child : Text("Categories",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,letterSpacing: 1.5,fontFamily: 'raleway'),),
                                    )
                                  ],
                                ),
                                SizedBox(height:height*0.03),
                                Container(
                                  width : width ,
                                  color : Color(0xFFf2f2f2),
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                       Row(
                                          children:[
                                            catItem(height,width,Icons.local_library,"Reading","Skill","/story",Colors.red[600]),
                                            SizedBox(width:width*0.05),
                                            catItem(height,width,Icons.spellcheck,"Grammer","Knowledge","a",Color(0xFF338a01))
                                          ]
                                      ),
                                      SizedBox(height: height*0.03,),
                                      Row(
                                          children:[
                                            catItem(height,width,Icons.format_paint,"Coloring","art","b",Colors.orangeAccent),
                                            SizedBox(width:width*0.05),
                                            catItem(height,width,Icons.create,"Writing","Skill","c",Colors.blue[600])
                                          ]
                                      ),
                                      SizedBox(height: height*0.03,),
                                      
                                       Row(
                                          children:[
                                            catItem(height,width,Icons.local_library,"Vocabulary","Understanding","d",Colors.indigo[900] ),
                                            SizedBox(width:width*0.05),
                                            catItem(height,width,Icons.filter_1,"Math","Knowledge","/mathhome",Colors.pinkAccent[400])
                                          ]
                                      ),
                                      SizedBox(height: height*0.03,),
                                       Row(
                                          children:[
                                            catItem(height,width,Icons.query_builder ,"Clock","Skill","f",Colors.blue[400] ),
                                            SizedBox(width:width*0.05),
                                            catItem(height,width,Icons.memory,"Science","Knowledge","g",Colors.cyan)
                                          ]
                                      ),
                                      
                                    ],
                                  ),
                                )
                              ]
                            )
                        ),
                    ]
                  )
            ),
          )
        );

    }

    Widget catItem(double height,double width,IconData icon,String title,String subtitle,String path,Color color){
        return InkWell(
        onTap: ()=>Navigator.pushNamed(context, path),
        child :  Container(
            height: height * 0.20,
            width : width * 0.418,
            child: Card(
              elevation: 5,
              color : Colors.white,
              shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.only(left:10,right:10,top:10),
                child : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(icon,size:35,color:color),
                      SizedBox(height:height*0.020),
                      Container(
                        width : width * 0.418,
                        height: height * 0.075,
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color:Color(0xFFf2f2f2),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment : CrossAxisAlignment.start,
                          children: [
                            Text(title,textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w900 ,fontSize: 14,letterSpacing: 1.0),),
                            Text(subtitle,textAlign:TextAlign.left,style:TextStyle(fontWeight: FontWeight.normal,fontSize: 10,letterSpacing: 1.0)),
                          ],
                          )
                        ),
                    ],
                ),
              )
            ),
          
        )
        )        ;  

    }
}