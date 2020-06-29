import 'package:flutter/material.dart';
import 'package:resapp/components/Drawer.dart';
import 'package:resapp/components/BottomNavBarWidget.dart';

class StoryFull extends StatefulWidget{
  @override
  _StoryFull createState()=> _StoryFull();
}

class _StoryFull extends State<StoryFull>{
  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return Scaffold(
           drawer: DrawerWidget(width: width,index:1),
           bottomNavigationBar: BottomNavBarWidget(currentIndex: 1,),
           backgroundColor: Colors.white,
            body: Builder(
              builder:(context)=> SingleChildScrollView(
                  child :  Stack(
                    
                    children: <Widget>[
                        Container(
                        
                        child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                               children:[
                                 SizedBox(height:height*0.05),
                                 backButton(context,height,width),
                                 Container(
                                   padding: EdgeInsets.all(20),
                                   height : height * 0.11,
                                   child: Text(
                                              "A Thirsty Crow ",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize : 18,
                                              ),
                                          ),
                                 ),
                                 storyImage(height,width,"images/crow_stiry.jpg"),
                                 Container(
                                   padding : EdgeInsets.all(15),
                                   child : Column(
                                     children: [
                                            Text("It was a hot summer’s day. A thirsty crow flew into a village in search of water. The crow flew over the houses, fields, and trees. But he didn’t find any water. After a long time, he came across a farm. Under one of the trees on the farm was a pitcher of water.",
                                                textAlign: TextAlign.justify ,
                                                style : TextStyle(fontSize: 14,fontWeight: FontWeight.w600,height: 1.5,letterSpacing: 0.5),
                                              ),
                                              SizedBox(height: height*0.02,),
                                              Text(
                                                "Happy that he found some water finally, he swooped down to the tree and then down to the ground. He quickly moved towards the pitcher and looked inside. There was very little water in the pot. The crow put his beak inside the pitcher but could not reach the water. The water level was too low, and the narrow opening prevented his neck from going all the way down.",
                                                textAlign: TextAlign.justify ,
                                                style : TextStyle(fontSize: 14,fontWeight: FontWeight.w600,height: 1.5,letterSpacing: 0.5)
                                              ),
                                              SizedBox(height: height*0.02,),
                                              Text(
                                                "He tried to push the vessel down to let the water out, but it was too heavy. The crow was disappointed. He was really thirsty and needed a drink of water badly. He could have given up and flown to another farm, looking for water.",
                                                textAlign: TextAlign.justify ,
                                                style : TextStyle(fontSize: 14,fontWeight: FontWeight.w600,height: 1.5,letterSpacing: 0.5)
                                              ),
                                               SizedBox(height: height*0.02,),
                                              Text(
                                                "But he didn’t. Instead, he looked around and thought, “What else can I do?” He saw that there were a lot of pebbles on the farm. And, he had an idea! He collected a pebble and put it into the pitcher. He collected another pebble and another and put them all in the pitcher. As he added more and more stones, the water level came up to the brim.",
                                                textAlign: TextAlign.justify ,
                                                style : TextStyle(fontSize: 14,fontWeight: FontWeight.w600,height: 1.5,letterSpacing: 0.5)
                                              ),
                                              SizedBox(height : height * 0.05),
                                              Text(
                                                "Moral : Think Smart, you may find a solution to any problem",
                                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,height: 1.5,letterSpacing: 0.5),
                                              ),
                                              SizedBox(height : height * 0.03),
                                     ],
                                   )
                                 )
                                 
                                 
                              ]
                        )
                      )
                    ]
                  )
                )
              )
            
          );
    }
  

  Widget backButton(BuildContext context,double height,double width){
    return InkWell(
      onTap: ()=>Navigator.pop(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5, top: 5, bottom: 0),
              child: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.black,
                          size: 25.0,
                    ),
              ),
            
          ],
        ),
      ),
    );
  }


   Widget storyImage(double height,double width,String imageUrl){
    return Center(
            child : Container(
            padding: EdgeInsets.symmetric(horizontal:5),
            child : Card( 
            shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                    ) ,
            elevation: 5,
            child : ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child : Image(image:AssetImage(imageUrl),
                              fit : BoxFit.fill,
                              height: height * .25,
                              width: width * .90,
                    )
            )
          )
      )
    );
  }
}