import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/social_section.dart';
import 'package:portfolio/screens/widgets/social_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'download_cv_widget.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width*0.07,),
      child: Column(
        crossAxisAlignment:  size.width > 600
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello! I am Rishika" ,
            style: TextStyle(
                fontSize: 35,
                color: AppColors.yelloworange,
                fontWeight: FontWeight.bold,
                fontFamily: 'EB_Garamond'),
              textAlign: TextAlign.center,
          ),
              GradientText("Android Developer", colors : [
                AppColors.grey,
                AppColors.yelloworange,
              ],

              style: TextStyle(fontSize: 25,
              fontFamily: 'EB_Garamond',
                fontWeight: FontWeight.bold
                ,
              ),
                textAlign: TextAlign.center,
              ),

          SizedBox(height: 20),
          SizedBox(
            width: size.width*0.8,
            child: Text("I aspire to secure an opportunity where I can not only unleash my full potential but also activelycontribute to the growth of the organization. My quest is for a challenging position within a respectedcompany, where I can immerse myself in learning new skills, expanding my knowledge base, andeffectively leveraging these learnings for the benefit of both the organization and myself. ",style: TextStyle(
                fontSize: 14,
                color: AppColors.lightGrey,
                fontWeight: FontWeight.w300,
                fontFamily: 'UbuntuSans'),
                textAlign: TextAlign.justify,
            ),
            
          ),

          /*Container(
            width: size.width*0.5,
            child: socialSection(),
          )*/

        ],
      ),
    );
  }
}

class social_large extends StatelessWidget {
  const social_large({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.5,
      child: Row(
        children: [
          DownloadCVButton(),
          SizedBox(width: 20,),
          SocialWidget(),
        ],
      ),

    );
  }
}

