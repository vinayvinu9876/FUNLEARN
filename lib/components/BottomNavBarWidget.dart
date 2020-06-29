import 'package:flutter/material.dart';
import 'package:resapp/components/ThemeMaker.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';


class BottomNavBarWidget extends StatefulWidget{
    BottomNavBarWidget({Key key,this.currentIndex}) : super(key: key);

    int currentIndex;
    @override
    _BottomNavBarWidget createState() => _BottomNavBarWidget(currentIndex : currentIndex);
    
}

class _BottomNavBarWidget extends State<BottomNavBarWidget>{
      _BottomNavBarWidget({this.currentIndex});

      int currentIndex;

      void ontap(int index){
          switch(index){
            case 0: Navigator.pushNamed(context,'/home' );break;
            case 1: Navigator.pushNamed(context,'/story');break;
            case 2: Navigator.pushNamed(context,'/history');break;
          }
      }
      
      Widget build(BuildContext build){
        return FFNavigationBar(
          theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white ,
          selectedItemBorderColor: getDarkColor(),
          selectedItemBackgroundColor: getDarkColor(),
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
        ),
        selectedIndex: this.currentIndex,
        onSelectTab: (index) {
          setState(() {
            currentIndex = index;
          });
          ontap(index);
        },       
        items: <FFNavigationBarItem>[
                FFNavigationBarItem(
                   iconData: Icons.home,
                  label: 'Home',
               ),
               FFNavigationBarItem(
                   iconData:Icons.filter_1,
                   label: 'Reading',
               ),
              FFNavigationBarItem(
                  iconData :Icons.local_library,
                  label : 'Grade Wise',
              ),
              FFNavigationBarItem(
                  iconData :Icons.video_library,
                  label : 'VidLearn',
              ),
            ],
            );  
            
           
      }

}