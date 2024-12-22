import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.yelloworange.withOpacity(0.5),width: 2),
          ),

          child: Center(
            child: IconButton(
              hoverColor: AppColors.yelloworange,
              onPressed: () async {
                final Uri url = Uri.parse('https://in.linkedin.com/in/rishikakumari20');
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
              },
              icon: FaIcon(FontAwesomeIcons.linkedin, color: AppColors.mediumPurpleGrey,size: 15,),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.yelloworange.withOpacity(0.5),width: 2),
          ),

          child: Center(
            child: IconButton(
              hoverColor: AppColors.yelloworange,
              onPressed: () async {
                final Uri url = Uri.parse('https://github.com/rishika1620/');
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
              },
              icon: FaIcon(FontAwesomeIcons.github, color: AppColors.mediumPurpleGrey,size: 15,),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.yelloworange.withOpacity(0.5),width: 2),
          ),

          child: Center(
            child: IconButton(
              hoverColor: AppColors.yelloworange,
              onPressed: () async {
                final Uri url = Uri.parse('https://leetcode.com/u/Rishika_Kumari20/');
                  if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
              },
              icon: FaIcon(FontAwesomeIcons.code, color: AppColors.mediumPurpleGrey,size: 15,),
            ),
          ),
        ),
        const SizedBox(width: 10,),
        /*Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.yelloworange.withOpacity(0.5),width: 2),
          ),

          child: Center(
            child: IconButton(
              hoverColor: AppColors.yelloworange,
              onPressed: (){},
              icon: FaIcon(FontAwesomeIcons.phone, color: AppColors.mediumPurpleGrey,size: 15,),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.yelloworange.withOpacity(0.5),width: 2),
          ),

          child: Center(
            child: IconButton(
              hoverColor: AppColors.yelloworange,
              onPressed: (){},
              icon: FaIcon(FontAwesomeIcons.mailchimp, color: AppColors.mediumPurpleGrey,size: 15,),
            ),
          ),
        )*/
      ],
    );
  }
}
