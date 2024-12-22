import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class project_item extends StatelessWidget {
  project_item({super.key});

  final String _url = 'https://github.com/rishika1620/Techglaz-Labs';

  // Helper function to launch URL
  Future<void> _launchURL() async {
    final Uri url = Uri.parse(_url);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication, // Open in external browser
      );
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.5,
          ),
        ),
        child: IntrinsicHeight(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/img_1.png', height: 150, width: 600,),),

                  SizedBox(height: 10,),

                  Text("Title of Project", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: AppColors.yelloworange,
                  ),),

                  SizedBox(height: 20,),

                  Text("Here, we will put our project description",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.lightGrey,
                    )
                    ,),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: _launchURL, // Handle the tap to open the URL
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'See project on Github',
                        style: TextStyle(
                          color: Colors.blue, // Make the text look like a link
                          //decoration: TextDecoration.underline, // Underline text to indicate it's a link
                        ),
                      ),
                      SizedBox(width: 5), // Add some spacing between text and icon
                      Icon(
                        Icons.open_in_new, // Redirect icon
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),


                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
