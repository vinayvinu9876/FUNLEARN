import 'package:flutter/material.dart';

List<List<Color>> itemColors =  [

      [
        Color(0xFFde6262),
        Color(0xFFffb88c)
      ],

      [
        Color(0xFF000428),
        Color(0xFF004e92)
      ],
      [
        Color(0xFF009FFD),
        Color(0xFF005ce6),
      ],
      [
        Color(0xFFcc2b5e),
        Color(0xFF753a88)
      ],
      [
        Color(0xFF42275a),
        Color(0xFF734b6d),
      ],
      [
        Color(0xFFdd5e89),
        Color(0xFFf7bb97)
      ],
      [
        Color(0xFF614385),
        Color(0xFF516395)
      ],
      [
        Color(0xFFef629f),
        Color(0xFFeecda3),
      ],

    ];



bool isDay(){
  var hour = new DateTime.now().hour;
  //var hour = 19;
  if(hour>=6  && hour<=18){
    return true;
  }
  return false;
}

Color getDarkColor(){
 // if(isDay())
    return Color(0xffe46b10);
 // return Color(0xff63A4FF);
}

Color getLightColor(){
  //if(isDay())
    return Color(0xfffbb448);
  //return Color(0xFF63A4FF);
}

Color getActiveColor(){
  //if(isDay())
    return Colors.orange[50];
  //return Colors.blue[50];
}

List<Color> getGradientColor(){
    //if(isDay())
      return [Color(0xfffbb448), Color(0xffe46b10)];
    //return [const Color(0xFF83EAF1), 
    //        const Color(0xFF63A4FF),
   //         const Color(0xFF9999ff)];
}


List<Color> getOppositeColor(){
 // if(!isDay())
      return [Color(0xfffbb448), Color(0xffe46b10)];
 // return [const Color(0xFF83EAF1), const Color(0xFF63A4FF),const Color(0xFF9999ff)];
}
