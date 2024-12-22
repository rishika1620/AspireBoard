import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/EducationCard_Widget.dart';
import 'package:portfolio/screens/widgets/Education_card.dart';
import 'package:portfolio/screens/widgets/menuBar.dart';
import '../constants/styles.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({
    super.key,
  });

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Education Details",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'EB_Garamond',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
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
              margin: EdgeInsets.symmetric(
                vertical: size.height * 0.02,
              ),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Education_Card(
                                title: 'BACHELOR OF ENGINEERING',
                                institute:
                                    'Sant Longowal Institue of Engineering and Technology (SLIET)',
                                imagePath:
                                    'assets/images/diploma_provisional.jpg',
                                location: 'Longowal, Punjab',
                                percentage: '88.4',
                                course: 'COMPUTER SCIENCE ENGINEERING',
                                year: '2025',
                              ),
                            ));
                      },
                      child: EducationCard(
                          course: "Bachlor of Engineering (B.E)",
                          university:
                              "in COMPUTER SCIENCE ENGINEERING",
                          image: "assets/images/dsa.png")),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Education_Card(title: 'DIPLOMA',
                              institute: 'Sant Longowal Institue of Engineering and Technology (SLIET)',
                              imagePath: 'assets/images/diploma_provisional.jpg',
                              location: 'Longowal, Punjab',
                              percentage: '88.47',
                              course: 'COMPUTER SCIENCE ENGINEERING',
                              year: '2022',
                            ),
                          ));
                    },
                    child: EducationCard(
                        course: "Diploma",
                        university:
                            "in COMPUTER SCIENCE ENGINEERING",
                        image: "assets/images/dsa.png"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Education_Card(title: 'MATRICULATION',
                              institute: 'Rose Mary Land School',
                              imagePath: 'assets/images/matriculation_marksheet.jpg',
                              location: 'Bihar Sharif, Bihar',
                              percentage: '93.2',
                              year: '2019',
                            ),
                          ));
                    },
                    child: EducationCard(
                        course: "Matriculation",
                        university: "in PCBMH",
                        image: "assets/images/dsa.png"),
                  ),

                  /*Education_Card(title: 'BACHELOR OF ENGINEERING',
                    institute: 'Sant Longowal Institue of Engineering and Technology',
                    imagePath: 'assets/images/diploma_provisional.jpg',
                    location: 'Longowal, Punjab',
                    percentage: '88.4',
                  ),

                  Education_Card(title: 'DIPLOMA',
                    institute: 'Sant Longowal Institue of Engineering and Technology',
                    imagePath: 'assets/images/diploma_provisional.jpg',
                    location: 'Longowal, Punjab',
                    percentage: '88.47',
                  ),

                  Education_Card(title: 'MATRICULATION',
                    institute: 'Rose Mary Land School',
                    imagePath: 'assets/images/matriculation_marksheet.jpg',
                    location: 'Bihar Sharif, Bihar',
                    percentage: '93.2',
                  ),*/
                ],
              ),
            ),
          ),
        ));
  }
}
