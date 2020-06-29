import "package:flutter/material.dart";
import 'package:resapp/components/ThemeMaker.dart';
import 'package:resapp/views/Math/CatSolvers/DecimalToHexaDecimal.dart';
import 'package:resapp/views/Math/util/FormatNumber.dart';
import 'package:resapp/views/Math/CatSolvers/DecimalToBinary.dart';


class MultipleChoice extends StatefulWidget{
  MultipleChoice({@required this.title,this.options});
  List<double> options = [];
  String title;
  @override
  State<MultipleChoice> createState()=>_MultipleChoice(alloptions:this.options,title:this.title);
}

class _MultipleChoice extends State<MultipleChoice>{
  _MultipleChoice({this.alloptions,@required this.title});
  List<double> alloptions = [];
  String title;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: body(context),
    );
  }

  Widget body(BuildContext context){
    return SingleChildScrollView(
      child: Stack(
        children : [
            headerBackGround(),
            questionCard(),
            options(),
        ]
      ),
    );
  }

  Widget options(){
    double height = MediaQuery.of(context).size.height;

    List<Widget> choices = [];
    alloptions.forEach((element) { 
        choices.add(optionItem(element));
        choices.add(SizedBox(height:height*0.02));
    });
    final inpController = TextEditingController();

    return new Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .45 ,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height : height * 0.55,
            width: MediaQuery.of(context).size.width,
              child: Container(
                child : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(10),
                        child : TextField(
                              controller: inpController,
                              keyboardType : TextInputType.number,
                              decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                ),
                              ),
                            
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Enter Problem",
                              suffixIcon: IconButton(
                                onPressed: (){
                                    double val = double.parse(inpController.text);
                                    decideRoute(context,val);
                                },
                                icon: Icon(Icons.done,color:Colors.green),
                              ),
                            ),
                        )
                    ) ,
                    Column(
                      children: choices,
                    )
                    
                ],
              )
              )
          )
        );
  }

  Widget optionItem(double value){
    double width = MediaQuery.of(context).size.width;
     return InkWell(
       onTap: (){ decideRoute(context,value);  },
       child :Container(
                  width: width * 0.9,
                  child : Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                            padding: EdgeInsets.all(15),
                            child : Text("${getFormattedNumber(value)}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,))
                    ),
      )));
  }
  
  Widget questionCard(){
    double height = MediaQuery.of(context).size.height;
    return new Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .18,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: height*0.25,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              color: Colors.white,
              elevation: 4.0,
              child: Container(
                padding: EdgeInsets.all(15),
                child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("$title",style: TextStyle(color:getDarkColor(),fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height:height*0.03),
                  Text(
                      "Either click on any problem given below or type your own problem above in the same format.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700]
                      ),
                    )
                ],
              )),
            ),
          ),
        );
  }

  Widget headerBackGround(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
            height : height * 0.30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight: Radius.circular(30)),  
              color : getDarkColor(),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [SizedBox(height:height*0.05),backButton(height,width)],
            ), 
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

  void decideRoute(BuildContext context,double n){
    print("$title");
    Widget toPush;
    if(title=="Decimal To Binary")
          toPush = DecimalToBinary(value:n);
    if(title=="Decimal To Hexadecimal")
          toPush = DecimalToHexaDecimal(value: n);
    if(toPush!=null)
      Navigator.push(context,MaterialPageRoute(builder: (context) => toPush));
  }
}