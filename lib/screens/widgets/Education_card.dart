import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class EducationCard extends StatelessWidget {
  final String course;
  final String university;
  final String image;

  // Correctly initialize fields in the constructor
  EducationCard({
    required this.course,
    required this.university,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          width: double.infinity,
          height: 100,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2), // Semi-transparent color
                  borderRadius: BorderRadius.circular(20), // Optional rounded corners
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3), // Optional border
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image widget in the left corner
                      CircleAvatar(
                        radius: 25, // Size of the avatar
                        backgroundImage: AssetImage(image), // Replace with your image
                      ),
                      SizedBox(width: 16.0), // Space between image and text
                      // Text widget next to image

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              course,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              overflow: TextOverflow.ellipsis, // Optional: shows "..." if text is too long
                              maxLines: 1,
                            ),
                            SizedBox(height: 5,),

                            if(course != 'Matriculation')
                            Text(
                              university,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: AppColors.lightGrey,
                              ),
                              overflow: TextOverflow.ellipsis, // Optional: shows "..." if text is too long
                              maxLines: 2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ),
          ),
        ),
    );
  }
}
