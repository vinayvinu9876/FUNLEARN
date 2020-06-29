import "package:flutter/material.dart";
import "package:resapp/views/Math/util/FormatNumber.dart";
import "package:resapp/views/Math/ProblemSolverSpace.dart";


class DecimalToHexaDecimal extends StatefulWidget{
  DecimalToHexaDecimal({@required  this.value});
  double value;
  @override
  State<DecimalToHexaDecimal> createState () => _DecimalToHexaDecimal(value:value);
}

class _DecimalToHexaDecimal extends State<DecimalToHexaDecimal>{
  _DecimalToHexaDecimal({@required this.value});
  double value;
  @override
  Widget build(BuildContext context){
    return ProblemSolverSpace(
        title: "Decimal To HexaDecimal",
        question: "Convert Decimal Number ${getFormattedNumber(value)} to HexaDecimal",
        solutionWidget: decimalToHexaDecimalsolutionSpace(this.value),
    );
  }

  Map<String,dynamic> getSolutionLines(double value){
      Map<String,dynamic> data= {
          "steps" : [],
          "solution" : "",
      }; 
      var remainderValues = {
        10 : "A",
        11 : "B",
        12 : "C",
        13 : "D",
        14 : "E",
        15 : "F",
    };

    while(value>0){
      dynamic remainder = (value % 16).toInt();
      if(remainder>9)
          remainder = remainderValues[remainder];
      Map<String,dynamic> step = {
        "remainder" : remainder,
        "value" : getFormattedNumber(value),
      };
      value = (value ~/ 16).toDouble();
      data["solution"] =  data["solution"] + (remainder).toString();
      data["steps"].add(step);
    }
    data["solution"] = data["solution"].split('').reversed.join('');
    return data;
  }

 

  Widget decimalToHexaDecimalsolutionSpace(double value){
    Map<String,dynamic> solution = getSolutionLines(value); 
    dynamic originalValue = value;
    List<Widget> solutionLines = [];
    print(solution["steps"]);
    int n = solution["steps"].length;
    for(int i=0;i<n-1;i++)
          solutionLines.add(
              solutionLinesFactorization(
                  value: solution["steps"][i]["value"],
                  divisor: 16,
                  remainder: solution["steps"][i]["remainder"]
              ));

    solutionLines.add(
        factorizationLastLine(solution["steps"][n-1]["value"],solution["steps"][n-1]["remainder"])
    );
   

    if(originalValue==originalValue.toInt())
        originalValue = originalValue.toInt();

    solutionLines.add(summaryLine(originalValue,solution["solution"]));
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
                Text("($solution) ",maxLines: 4, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Padding(
                      padding: EdgeInsets.only(top:10),
                      child:  Text("16",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold),),
                  ),
              ],
            ),
            
          ]
        ), 
      );
  }

  Widget factorizationLastLine(value,remainder){
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