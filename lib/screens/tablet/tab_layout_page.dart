import 'package:flutter/material.dart';

import '../../constants/styles.dart';
import '../widgets/download_cv_widget.dart';
import '../widgets/header_text_widget.dart';
import '../widgets/rotating_image_widget.dart';
import '../widgets/social_widget.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({super.key});

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
   /* Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,

        child: SingleChildScrollView(
          child: Container(
                margin: EdgeInsets.symmetric(vertical: size.height*0.18),

            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RotatingImageContainer(),
                            ],
                          ),
                        ),
                        SizedBox(height: size.width*0.09,),
                        Row(
                          children: [
                            HeaderTextWidget(size: size,),
                          ],
                        ),

                        SizedBox(height: 20,),
                        Social_Tab(size: size),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20,),
              ],
            )

              ),
          ),
        ),
      );*/

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

                         Container(
                          //height: size.height*0.75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RotatingImageContainer(),
                            ],
                          ),
                        ),


                        HeaderTextWidget(size: size,),
                        SizedBox(height: 20,),
                        Social_Tab(size: size),
                      ],
                    ),
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

class Social_Tab extends StatelessWidget {
  const Social_Tab({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DownloadCVButton(),
          SizedBox(height: 20,),
          SocialWidget(),
        ],
      ),
    );
  }
}
