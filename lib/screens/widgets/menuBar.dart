import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/projects.dart';
import 'package:portfolio/screens/skills.dart';
import 'package:portfolio/screens/widgets/EducationCard_Widget.dart';

import '../../constants/colors.dart';
import '../education_page.dart';
import '../home_page.dart';
import 'Education_card.dart';

class Menu_Bar extends StatefulWidget {
  const Menu_Bar({super.key});

  @override
  State<Menu_Bar> createState() => _Menu_BarState();
}

class _Menu_BarState extends State<Menu_Bar> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
    DrawerHeader(
    decoration: BoxDecoration(
    color: AppColors.yelloworange,
    ),
    child: Text(
    'All you need to Know\n About me',
    style: TextStyle(
    color: AppColors.mediumPurpleGrey,
    fontSize: 24,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    ListTile(
    leading: Image.asset('assets/icons/home.png',width: 25, height: 25,),
    title: Text('Home', style: TextStyle(
    color: AppColors.mediumPurpleGrey,
    fontFamily: 'UbuntuSans',
    fontWeight: FontWeight.w700,
    ),),
    onTap: () {
    // Handle menu item click
    Navigator.pop(context);
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => HomePage())); // Close the drawer
    },
    ),
    ListTile(
    leading: Image.asset('assets/icons/education.png', width: 25, height: 25,),
    title: Text('Education', style: TextStyle(
    color: AppColors.mediumPurpleGrey,
    fontFamily: 'UbuntuSans',
    fontWeight: FontWeight.w700,
    ),),
    onTap: () {
    // Handle menu item click
    Navigator.pop(context);
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => EducationPage()));
    },
    ),

    ListTile(
    leading: Image.asset('assets/icons/skill.png',width: 25, height: 25,),
    title: Text('Skills', style: TextStyle(
    color: AppColors.mediumPurpleGrey,
    fontFamily: 'UbuntuSans',
    fontWeight: FontWeight.w700,
    ),),
    onTap: () {
    // Handle menu item click
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SkillsPage()));
    },
    ),

    ListTile(
    leading: Image.asset('assets/icons/project.png', width: 25, height: 25,),
    title: Text('Projects', style: TextStyle(
    color: AppColors.mediumPurpleGrey,
    fontFamily: 'UbuntuSans',
    fontWeight: FontWeight.w700,
    ),),
    onTap: () {
    // Handle menu item click
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ProjectsPage()));
    },
    ),

      ListTile(
        leading: Image.asset('assets/icons/information-channels.png', width: 25, height: 25,),
        title: Text('Experience', style: TextStyle(
          color: AppColors.mediumPurpleGrey,
          fontFamily: 'UbuntuSans',
          fontWeight: FontWeight.w700,
        ),),
        onTap: () {
          // Handle menu item click
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactPage()));
        },
      ),

    ListTile(
    leading: Image.asset('assets/icons/information-channels.png', width: 25, height: 25,),
    title: Text('Contact', style: TextStyle(
    color: AppColors.mediumPurpleGrey,
    fontFamily: 'UbuntuSans',
    fontWeight: FontWeight.w700,
    ),),
    onTap: () {
    // Handle menu item click
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ContactPage()));
    },
    ),
    ],
    ),
    );
  }
}
