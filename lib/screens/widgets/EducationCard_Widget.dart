import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

import '../../constants/styles.dart';

class Education_Card extends StatefulWidget {

  final String title;
  final String imagePath;
  final String institute;
  final String location;
  final String percentage;
  final String? course;
  final String year;


  // Constructor to accept dynamic values
  Education_Card({
    required this.title,
    required this.imagePath,
    required this.institute,
    required this.location,
    required this.percentage,
    required this.year,
    this.course,
  });

  @override
  _Education_CardState createState() => _Education_CardState();
}

class _Education_CardState extends State<Education_Card> {

  late String s;
  @override
  Widget build(BuildContext context) {

    if(widget.title == 'MATRICULATION')
      s = 'SCHOOL';
    else
      s = 'COLLEGE';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Graduation",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'EB_Garamond',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.yelloworange,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.title,style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'EB_Garamond'
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
          
                  SizedBox(height: 30,),
                  if(widget.course != null)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align children to the top
                      children: [
                        // "COLLEGE:" text
                        Text(
                          'COURSE: ',
                          style: TextStyle(
                            color: AppColors.lightGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'UbuntuSans',
                          ),
                          textAlign: TextAlign.start,
                        ),
          
                        SizedBox(width: 4,),
          
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
                            children: [
                              // Institute text
                              Text(
                                '${widget.course}',
                                style: TextStyle(
                                  color: AppColors.lightGrey,
                                  fontSize: 15,
                                  fontFamily: 'UbuntuSans',
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align children to the top
                    children: [
                      // "COLLEGE:" text
                        Text(
                          '${s}: ',
                          style: TextStyle(
                            color: AppColors.lightGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'UbuntuSans',
                          ),
                          textAlign: TextAlign.start,
                        ),

          
                      SizedBox(width: 4,),
          
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start
                          children: [
                            // Institute text
                            Text(
                              '${widget.institute}',
                              style: TextStyle(
                                color: AppColors.lightGrey,
                                fontSize: 15,
                                fontFamily: 'UbuntuSans',
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('LOCATION: ',style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'UbuntuSans'
                      ),
                          textAlign: TextAlign.start
                      ),
                      SizedBox(width: 4,),
          
                      Text('${widget.location} ',style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 15,
                          fontFamily: 'UbuntuSans'
                      ),
                          textAlign: TextAlign.start
                      ),
                    ],
                  ),

                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('YEAR OF COMPLETION: ',style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'UbuntuSans'
                      ),
                          textAlign: TextAlign.start
                      ),
                      SizedBox(width: 4,),

                      Text('${widget.year} ',style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 15,
                          fontFamily: 'UbuntuSans'
                      ),
                          textAlign: TextAlign.start
                      ),
                    ],
                  ),
          
                  SizedBox(height: 10,),
          
                  Row(
                    children: [
                      Text('PERCENTAGE: ',style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'UbuntuSans'
                      ),
                          textAlign: TextAlign.start
                      ),
                      SizedBox(width: 4,),
          
                      Text('${widget.percentage}% ',style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 15,
                          fontFamily: 'UbuntuSans'
                      ),
                          textAlign: TextAlign.start
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CERTIFICATE ',style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'UbuntuSans'
                      ),
                          textAlign: TextAlign.start
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0), // Define the corner radius
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.cover, // Adjust the fit as needed
                      width: double.infinity,       // Set the width as per your layout
                      height: 500,      // Set the height as per your layout
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}