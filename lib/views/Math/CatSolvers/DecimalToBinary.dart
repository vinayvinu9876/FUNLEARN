import "package:flutter/material.dart";
import "package:resapp/views/Math/util/FormatNumber.dart";
import "package:resapp/views/Math/ProblemSolverSpace.dart";


class DecimalToBinary extends StatefulWidget{
  DecimalToBinary({@required  this.value});
  double value;
  @override
  State<DecimalToBinary> createState () => _DecimalToBinary(value:value);
}

class _DecimalToBinary extends State<DecimalToBinary>{
  _DecimalToBinary({@required this.value});
  double value;
  @override
  Widget build(BuildContext context){
    return ProblemSolverSpace(
        title: "Decimal To Binary",
        question: "Convert Decimal Number ${getFormattedNumber(value)} to Binary",
        solutionWidget: decimalToBinarysolutionSpace(this.value),
    );
  }

 

  Widget decimalToBinarysolutionSpace(double value){
    List<Widget> solutionLines = [];
    String binString = "";
    dynamic originalValue = value;
    if(originalValue==originalValue.toInt())
        originalValue = originalValue.toInt();
    while(value>1){
      double remainder = value % 2;
      print("Value = $value Reaminder = $remainder");
     
      solutionLines.add(
        solutionLinesFactorization(
                                  value : getFormattedNumber(value),
                                  divisor: 2, 
                                  remainder: remainder.toInt()
                                ),
      );
      value = (value ~/ 2).toDouble();
      binString = binString + (remainder.toInt()).toString();
    }
    binString = binString + "1"; //last one
    binString = binString.split('').reversed.join('');
    solutionLines.add(factorizationLastLine(),);

    solutionLines.add(summaryLine(originalValue,binString));
    double width = MediaQuery.of(context).size.width;
    return Container(
      width : width,
      child: Center(
       child :  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: solutionLines,
      ),
    ));
  }

  Widget summaryLine(value,solution){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
            width : width ,
            padding: EdgeInsets.only(top:height*0.1,bottom:10,left:5,right:5),
            child :Column(
              children : 
              [
              Row(
              children: [
                Text("( $value ) ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Padding(
                  padding: EdgeInsets.only(top:10),
                  child:  Text("10",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),
                ),
                Text(" =  ",style: TextStyle(fontSize:24),),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Text("($solution) ",maxLines: 4, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Padding(
                      padding: EdgeInsets.only(top:10),
                      child:  Text("2",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),
                  ),
              ],
            )
            
          ]
        ), 
      );
  }

  Widget factorizationLastLine(){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
      return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex : 1,
                  child : SizedBox(width:width*0.01),
                ),
                Expanded(
                  flex : 5,
                  child : Container(
                    padding: EdgeInsets.only(left:4),
                    child: Text("1",style: TextStyle(fontSize: 20),),
                  )
                ),
                Expanded(
                  flex : 4,
                  child : Row(
                    children: [
                      Container(width: width*0.1,height:height*0.004,color:Colors.black,),
                      Icon(Icons.chevron_right),
                      Text("1",style:TextStyle(fontSize: 20))
                    ],
                  )
                ),
              ],
        );
  }

  Widget solutionLinesFactorization({@required value,@required divisor,@required remainder}){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
      return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex : 1,
                  child : Text("$divisor",style: TextStyle(fontSize:20),),
                ),
                Expanded(
                flex : 5,
                 child : Container(
                  decoration: BoxDecoration(
                      border: Border(
                                left: BorderSide(width: 1.0),
                                bottom: BorderSide(width:1.0),
                              )
                    ),
                    padding: EdgeInsets.only(left:4),
                  child: Text("$value",style: TextStyle(fontSize: 20),),
                )
                ),
                Expanded(
                  flex : 4,
                  child : Row(
                    children: [
                      Container(width: width*0.1,height:height*0.004,color:Colors.black,),
                      Icon(Icons.chevron_right),
                      Text("$remainder",style:TextStyle(fontSize: 20))
                    ],
                  )
                ),
              ],
        );
  }
}