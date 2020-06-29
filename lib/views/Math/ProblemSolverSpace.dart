import "package:flutter/material.dart";
import 'package:resapp/components/ThemeMaker.dart';


class ProblemSolverSpace extends StatefulWidget{
  ProblemSolverSpace({@required this.title,@required this.question,@required this.solutionWidget});
  String title;
  String question;
  Widget solutionWidget;
  @override
  State<ProblemSolverSpace> createState () => _ProblemSolverSpace(title:this.title,question:this.question,solutionWidget: solutionWidget);
}

class _ProblemSolverSpace extends State<ProblemSolverSpace>{
  _ProblemSolverSpace({@required this.title,@required this.question,@required this.solutionWidget});
  String title;
  String question;
  Widget solutionWidget;
  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
              leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
              ), 
              title: Text("$title"),
              centerTitle: true,
              backgroundColor: getDarkColor(),
            ),
      body: SingleChildScrollView(
        child : Stack(
        children: [
          Container(
            width: width ,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ 
                Text("Problem : ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                Text("$question ",maxLines: 3,),
                SizedBox(height:height*0.05),
                Text("Solution:",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                SizedBox(height:height*0.05),
                solutionWidget,
              ],
            ),
          ),
        ],
      ),
    ));
  }
}