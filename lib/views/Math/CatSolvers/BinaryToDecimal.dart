import "package:flutter/material.dart";
import "package:resapp/views/Math/util/FormatNumber.dart";
import 'package:resapp/views/Math/CatSolvers/SubscriptSuperScriptList.dart';
import "package:resapp/views/Math/ProblemSolverSpace.dart";


class BinaryToDecimal extends StatefulWidget{
  BinaryToDecimal({@required this.value});
  dynamic value;
  @override
  State<BinaryToDecimal> createState ()=> _BinaryToDecimal(value:value);
}

class _BinaryToDecimal extends State<BinaryToDecimal>{
  _BinaryToDecimal({@required this.value});
  dynamic value;
  @override
  Widget build(BuildContext context){
    return ProblemSolverSpace(
      title: "Binary To Decimal",
      question: "Convert 1101 to Decimal",
      solutionWidget: solutionWidget(),
    );
  }

  Widget solutionWidget(){
    return Column(
      children: [
          line(
            binaryNum: "0",
            superscript: "0",
            value : "0",
          ),
          line(
            binaryNum: "0",
            superscript: "1",
            value : "0",
          ),
          line(
            binaryNum: "1",
            superscript: "2",
            value : "4",
          ),
          
      ],
    );
  }

  Widget line({String binaryNum,String superscript,String value}){
    return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex : 1,
                child: Text("$binaryNum",style: TextStyle(fontSize: 18,),),
              ),
              Expanded(
                flex : 2,
                child : arrowMark() 
              ),
              Expanded(
                flex : 8,
                child : Text("x2${unicodeMap[superscript]["superscript"]} = $value",style: TextStyle(fontSize: 18,),),
              )
            ],
        );
  }


  Widget arrowMark(){
    return Row(
          children: [
          Container(width: 20,height:3,color:Colors.black,),
          Icon(Icons.chevron_right),
        ],
      );
  }
}