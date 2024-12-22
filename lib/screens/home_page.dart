import 'package:flutter/material.dart';
import 'package:portfolio/screens/tablet/tab_layout_page.dart';

import 'largescreen/desktop_layout_page.dart';
import 'mobile/mobile_layout_page.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context, constraints){

      return MobileLayout();
     /*if(constraints.maxWidth>840) {
        return DesktopLayout();
      }
      else if(constraints.maxWidth>600) {
        return TabLayout();
      }
      else{
        return MobileLayout();
      }*/

    }
    );
  }


}