import 'package:intl/intl.dart';

String getFormattedNumber(double n){
      String num;
      if(n == n.toInt()){
          num = n.toInt().toString();
      }
      else{
        num = n.toString();
      }
      final formatter = new NumberFormat("#,##,###");
      if(num.length>4){
        return formatter.format(n);
      }
      return num;
  }