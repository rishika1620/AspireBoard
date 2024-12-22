import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/social_widget.dart';

import 'download_cv_widget.dart';

class socialSection extends StatelessWidget {
  const socialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DownloadCVButton(),
          const SizedBox(width: 20,),
          Expanded(child: SocialWidget()),

        ],
      ),

    );
  }
}
