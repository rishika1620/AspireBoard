import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'dart:math' as math;

class RotatingImageContainer extends StatefulWidget {
  const RotatingImageContainer({super.key});

  @override
  State<RotatingImageContainer> createState() => _RotatingImageWidgetState();
}

class _RotatingImageWidgetState extends State<RotatingImageContainer> {

  bool ishovered = false;
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(()=> ishovered = true),
      onExit: (_) => setState(()=> ishovered = false),

        /*child: AnimatedContainer(
          duration: Duration(microseconds: 300),
          // transform: Matrix4.identity()..scale(ishovered? 1.0 : 0.8),
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/profile_photo.jpg'),
                alignment: Alignment.center,
              ),
              border: Border.all(color: AppColors.mediumPurpleGrey, width: 1.2),
              borderRadius: BorderRadius.circular(50)
          ),
        ),*/

      child: Card(
        elevation: 8, // Controls the shadow depth
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          // Rounded corners
        ),

        color: AppColors.yelloworange,
        clipBehavior: Clip.antiAlias,


        child: Image.asset('assets/images/profile_photo.jpg', height: 250, width: 250,  fit: BoxFit.cover,),

      )

    );
  }
}
