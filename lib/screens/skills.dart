import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/menuBar.dart';

import '../constants/styles.dart';
class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Skills Acquired", style: TextStyle(
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
              child:Padding(
                padding: EdgeInsets.all(10),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Technical Skills", style : TextStyle(
                        color: AppColors.yelloworange,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'EB_Garamond'
                    )),

                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child : Center(
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                                width: 350,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2), // Semi-transparent color
                                  borderRadius: BorderRadius.circular(20), // Optional rounded corners
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3), // Optional border
                                    width: 1.5,
                                  ),
                                ),

                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                        child: Text("Languages",style : TextStyle(
                                          color: AppColors.lightGrey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                        )),

                                        ),
                                        SizedBox(height: 15,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            buildskillsmodule(path: "assets/images/c.png"),
                                            buildskillsmodule(path: "assets/images/c++.png"),
                                            buildskillsmodule(path: "assets/images/java.png"),
                                           buildskillsmodule(path: "assets/images/xml.png"),
                                          ],
                                        )
                                      ],
                                    )
                                )
                            ),
                          ),
                        ),
                      ),),

                    SizedBox(height: 15,),

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child : Center(
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                                width: 350,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2), // Semi-transparent color
                                  borderRadius: BorderRadius.circular(20), // Optional rounded corners
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3), // Optional border
                                    width: 1.5,
                                  ),
                                ),

                                child: Container(
                                    margin: EdgeInsets.all(10),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                        child: Text("Tools",style : TextStyle(
                                          color: AppColors.lightGrey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                        )),
                                        ),

                                        SizedBox(height: 15,),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            buildskillsmodule(path: "assets/images/android_studio.png"),
                                            buildskillsmodule(path: "assets/images/vs_code.png"),
                                            buildskillsmodule(path: "assets/images/mongoDB_compass.png"),
                                          ],
                                        )
                                      ],
                                    )
                                )
                            ),
                          ),
                        ),
                      ),
                    ),


                    SizedBox(height: 15,),

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child : Center(
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                                width: 350,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2), // Semi-transparent color
                                  borderRadius: BorderRadius.circular(20), // Optional rounded corners
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3), // Optional border
                                    width: 1.5,
                                  ),
                                ),

                                child: Container(

                                    margin: EdgeInsets.all(10),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                        child: Text("Database",style : TextStyle(
                                          color: AppColors.lightGrey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900,
                                        )),
                                        ),

                                        SizedBox(height: 15,),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            buildskillsmodule(path: "assets/images/sqLite.png"),
                                            buildskillsmodule(path: "assets/images/mongoDB.png"),
                                            buildskillsmodule(path: "assets/images/firebase.png"),

                                          ],
                                        )
                                      ],
                                    )
                                )
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15,),

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child : Center(
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                                width: 350,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2), // Semi-transparent color
                                  borderRadius: BorderRadius.circular(20), // Optional rounded corners
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3), // Optional border
                                    width: 1.5,
                                  ),
                                ),

                                child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                    child:Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        Padding(padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                          child: Text("Subjects",style : TextStyle(
                                            color: AppColors.lightGrey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                          )),
                                        ),
                                        SizedBox(height: 15,),

                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            buildskillsmodule(path: "assets/images/os.png"),
                                            buildskillsmodule(path: "assets/images/dbms.png"),
                                            buildskillsmodule(path: "assets/images/dsa.png"),
                                            buildskillsmodule(path: "assets/images/cn.png"),

                                          ],
                                        )
                                      ],
                                    )
                                )
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                     Text("Interpersonal Skills", style: TextStyle(
                      color: AppColors.yelloworange,
                      fontFamily: "EB_Garamond",
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),),

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                        child : Center(
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: 350,
                                //height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2), // Semi-transparent color
                                  borderRadius: BorderRadius.circular(20), // Optional rounded corners
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3), // Optional border
                                    width: 1.5,
                                  ),
                                ),
                                child: Padding(padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const _buildSkills(title: "Problem Solving"),
                                      const SizedBox(height: 10),
                                      const _buildSkills(title: "Team Work"),
                                      const SizedBox(height: 10),
                                      const _buildSkills(title: "Adaptability"),
                                      const SizedBox(height: 10),
                                      const _buildSkills(title: "Self-Motivation"),
                                      const SizedBox(height: 10),
                                      const _buildSkills(title: "Determination"),
                                      const SizedBox(height: 10),
                                      const _buildSkills(title: "Time Management"),
                                      const SizedBox(height: 10),
                                      const _buildSkills(title: "Communication"),
                                    ],
                                  ),
                                ),
                              )
                            )
                          )
                        ),
                    ),
                  ],
                ),

              )
          ),



    ));
  }
}

class _buildSkills extends StatelessWidget{
  final String title;
  const _buildSkills({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 40),
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(fontSize: 18,color: AppColors.lightGrey),
        ),
      ],
    );
  }
}

class buildskillsmodule extends StatelessWidget {
  final String path;
  const buildskillsmodule({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8, // Elevation for the shadow effect
      shape: CircleBorder(), // Circular shape for the avatar
      child: CircleAvatar(
        radius: 35, // Size of the avatar
        backgroundImage: AssetImage(path), // Replace with your image
      ),
    );
  }
}
