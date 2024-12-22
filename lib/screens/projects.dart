import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/menuBar.dart';
import 'package:portfolio/screens/widgets/project_item.dart';

import '../constants/styles.dart';
import 'home_page.dart';
import 'mobile/mobile_layout_page.dart';
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Projects Done", style: TextStyle(
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
              scrollDirection: Axis.vertical,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    project_item(),
                    SizedBox(height: 20,),
                    project_item(),
                    SizedBox(height: 20,),
                    project_item(),
                  ],
                ),
                
              ),


            )

        )

    );
  }
}