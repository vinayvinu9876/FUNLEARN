import "package:flutter/material.dart";
import "package:resapp/views/Math/MultipleChoice.dart";

class MathHome extends StatefulWidget{

  @override
  State<MathHome> createState()=> _MathHome();
}

class _MathHome extends State<MathHome>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : body(context),

    );
  }

  Widget body(BuildContext context){
      double height = MediaQuery.of(context).size.height;
      double width = MediaQuery.of(context).size.width;
      return Container(
        child : SingleChildScrollView(
        child : Stack(
          children: [
              Container(
                height : height * 0.5,
                width : width ,
                decoration: BoxDecoration(
                    image: DecorationImage(
                            image: NetworkImage("https://image.freepik.com/free-vector/cartoon-maths-elements-background_52683-8059.jpg"),
                            fit: BoxFit.cover,
                    ),
                ),
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children : [
                              SizedBox(height:height*0.05),
                              backButton(height,width)
                              ],
                )
              ),
              new Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(top : height * 0.43,),
                child: new Container(
                        decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40)),
                              color : Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left:15,right:15,top:5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height:height*0.02),
                            Padding(
                              padding: EdgeInsets.only(left:10),
                              child :  Text("Mathematics",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(height : height * 0.02),
                            Column(
                              children: [
                                  item(
                                    height: height,
                                    width : width,
                                    ontap : (){Navigator.pushNamed(context, '/decimaltobinary');},
                                    imageUrl :"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSlvmAUnkCHJ-VMU91Tw9NUNpJlsdB1ocbPqw&usqp=CAU",
                                    title : "Decimal To Binary",
                                    description: " A binary number is a number expressed in the base-2 numeral system or binary numeral system, which uses only two symbols: typically 0 (zero) and 1 (one)",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,
                                    imageUrl :"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgp0kSYSWqzHNh7rk8QM4TnYobn7OBotASqw&usqp=CAU",
                                    title : "Decimal To Hexadecimal",
                                    description: "There are 16 Hexadecimal digits. They are the same as the decimal digits up to 9, but then there are the letters A, B, C, D, E and F in place of the decimal numbers 10 to 15",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,
                                    imageUrl :"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ4LsPlr2A8An7WfTY8qVGmpbbuDPceDrVO7Q&usqp=CAU",
                                    title : "Binary To Decimal",
                                    description: "A decimal number can be defined as a number whose whole number part and the fractional part is separated by a decimal point.",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,
                                    imageUrl :"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQd2NWEhwF46q2DNAo_dRy9zI8FHTabZyzo6A&usqp=CAU",
                                    title : "HexaDecimal To Decimal",
                                    description: "A decimal number can be defined as a number whose whole number part and the fractional part is separated by a decimal point.",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,
                                    imageUrl :"https://cdn1.vectorstock.com/i/1000x1000/97/35/with-menu-cartoon-multiply-sign-for-calculate-math-vector-22519735.jpg",
                                    title : "Multiplication",
                                    description: "The multiplication of whole numbers may be thought as a repeated addition",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,
                                    imageUrl :"https://images-na.ssl-images-amazon.com/images/I/B1HYJn9MrPS._SL1500_.jpg",
                                    title : "Divide",
                                    description: "Division is splitting into equal parts or groups. It is the result of fair sharing",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,
                                    imageUrl :"https://i.pinimg.com/originals/a5/bd/5a/a5bd5a4749bb04e52a51e6d573617821.png",
                                    title : "Square Root",
                                    description: "In mathematics, a square root of a number x is a number y such that y2 = x",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,
                                    imageUrl :"https://lcmenvironmental.com/wp-content/uploads/2016/06/lcm_logo_medium.png",
                                    title : "LCM",
                                    description: "The Least Common Multiple ( LCM ) is also referred to as the Lowest Common Multiple ( LCM ) and Least Common Divisor ( LCD) ",
                                    options : [512,1024,2048],
                                  ),
                                  SizedBox(height:height*0.02),
                                  item(
                                    height: height,
                                    width : width,  
                                    imageUrl :"https://i.ytimg.com/vi/zsvSKbNKQnM/hqdefault.jpg",
                                    title : "HCF",
                                    description: "The greatest number which divides each of the two or more numbers is called HCF or Highest Common Factor",
                                    options : [512,1024,2048],
                                  ),
                              ],
                            ),
                            SizedBox(height:height*0.05),
                          ],
                        ),
              ),
        )
 
          ],
        ) 
      )
      );
  }

  Widget item({@required double height,@required double width,String imageUrl,String title,String description,Function ontap,List<double> options}){
    return InkWell(
            onTap : (){
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MultipleChoice(options: options,title: title,)),
                );
            },
            child : Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child : Container(
                    width: width,
                    height : height * 0.15,
                    padding: EdgeInsets.only(left:10,right:10),
                    child: Row(
                    children: [
                      CircleAvatar(
                       radius: 30,
                       backgroundImage: NetworkImage('$imageUrl')
                      ),
                      SizedBox(width:width*0.05),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment : CrossAxisAlignment.center,
                         children: [
                          Container(
                            width: 150,
                            child: Text(
                             "$title",
                             overflow: TextOverflow.ellipsis,
                             maxLines: 2,
                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                           )
                         ),
                         SizedBox(height:height*0.01),
                         Container(
                            width: 150,
                            child: Text(
                            "$description",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(fontSize: 12,color:Colors.grey[600]),
                         )
                      ),  
                  ],
                )
              ],
          ),
        )
      )
    );
  }

 

  Widget backButton(double height,double width){
    return InkWell(
      onTap: ()=>Navigator.pop(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              child: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                          size:30.0,
                    ),
              ),
            
          ],
        ),
      ),
    );
  }
}