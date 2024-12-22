import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/home_page.dart';
import 'package:portfolio/screens/widgets/menuBar.dart';

import '../../constants/styles.dart';
import '../education_page.dart';
import '../tablet/tab_layout_page.dart';
import '../widgets/download_cv_widget.dart';
import '../widgets/header_text_widget.dart';
import '../widgets/rotating_image_widget.dart';
import '../widgets/social_widget.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Rishika's Portfolio", style: TextStyle(
          color: Colors.white,
          fontFamily: 'EB_Garamond',
          fontSize: 25,
          fontWeight: FontWeight.bold,

        ),),
        backgroundColor: AppColors.yelloworange,
      ),
      drawer: Menu_Bar(),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,

        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(vertical: size.height*0.05,),

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
                          Social_Mobile(size: size),
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
    );
  }
}

class Social_Mobile extends StatelessWidget {
  const Social_Mobile({super.key, required this.size});
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