import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled4/Helpers/constants.dart';
import 'package:untitled4/Views/layout/layout_home.dart';
import 'package:untitled4/Views/layout/layout_notification.dart';
import 'package:untitled4/Views/layout/layout_setting.dart';
class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
int selectedIndex = 0;

List layout = [
  LayoutHome(),
  LayoutNotification(),
  LayoutSetting(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: layout[selectedIndex],
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //   gapLocation:GapLocation.center,
      //   notchSmoothness:NotchSmoothness.verySmoothEdge,
      //   icon:[
      //     Icons.home,
      //     Icons.home,
      //     Icons.home,
      //   ],
      //   activeIndex:selectedIndex,
      //   onTap:(int){
      //     setState(() {
      //       selectedIndex = index;
      //     });
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.gaeycolor,
        selectedItemColor: MyColors.redColor,
        unselectedItemColor: MyColors.blackcolor,
        //type: BottomNavigationBarType.fixed,
         currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });

        },
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label:"Home"
          ),
          BottomNavigationBarItem(icon:Icon(
              Icons.notifications),
            label: "Notifications"
          ),
          BottomNavigationBarItem(icon:Icon(
              Icons.settings
          ),
            label: "Settings"
          ),
        ],
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){},
         child: Icon(Icons.add),
       ),
       floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
     );
  }
}
