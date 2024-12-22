import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/styles.dart';

import '../widgets/header_text_widget.dart';
import '../widgets/rotating_image_widget.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,

        child: SingleChildScrollView(
          child:  Column(
            children: [

              Container(
                margin: EdgeInsets.symmetric(vertical: size.height*0.18),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                              HeaderTextWidget(size: size,),
                              SizedBox(height: 20,),
                              social_large(size: size),
                            ],
                      ),

                      Expanded(child: Container(
                        //height: size.height*0.75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RotatingImageContainer(),
                          ],
                        ),
                      ))
                    ],
                  ),
              ),
            ],
        ),
        ),
        ),
      );
  }
}
