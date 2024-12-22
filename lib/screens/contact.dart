import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/screens/widgets/menuBar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/styles.dart';
import 'dart:convert';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  Future sendEmail() async {
    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    const serviceId = "service_nuidv47";
    const templateId = "template_gqrhm97";
    const userId = "FzYrWtGjfg3b9jypW";

    final response = await http.post(url,
        headers: {
          'origin': 'http://localhost',
          'content-Type': 'application/json',
        },
        body: json.encode({
          "service_id": serviceId,
          "template_id": templateId,
          "user_id": userId,
          "template_params": {
            "name": _nameController.text,
            "subject": "A query received from Portfolio",
            "message": _messageController.text,
            "user_email": _emailController.text,
          }
        }));

        if (response.statusCode == 200) {
          print("Email send Sucessfully");
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email sent Sucessfully")));
          _nameController.clear();
          _messageController.clear();
          _emailController.clear();
          return true;// Success
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to send email,Try again!")));
          print('Failed to send email: ${response.body}');
          return false; // Failure
        }
  }

  final String phoneNumber = "tel:+91 7050341739"; // Replace with your phone number

  Future<void> _launchDialer() async {
    if (await canLaunch(phoneNumber)) {
      await launch(phoneNumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  final Uri emailUri = Uri.parse("mailto:radharaj1200@gmail.com?subject=Subject&body=Body");  // Use Uri.parse()  // Replace with your email details

  Future<void> _launchEmail() async {
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch ';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Me",
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
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
            ),
            child: Column(
              children: [
                Image.asset("assets/images/contact_me.png"),
                SizedBox(height: 20),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 1.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Send your queries",
                                style: TextStyle(
                                  color: AppColors.lightGrey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller: _nameController,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  labelStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.yelloworange,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.yelloworange,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color when there's an error
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),
                              TextFormField(
                                controller: _emailController,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.yelloworange,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.yelloworange,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),

                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color when there's an error
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                      .hasMatch(value)) {
                                    return 'Please enter a valid email';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 15),
                              TextFormField(
                                controller: _messageController,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  labelText: 'Message',
                                  labelStyle: TextStyle(color: Colors.white),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.yelloworange,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.yelloworange,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color when there's an error
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                maxLines: 5,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a message';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: AppColors.blackgeryShade,
                                  backgroundColor: AppColors.yelloworange,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {
                                  if (_formKey.currentState?.validate() ==
                                      true) {
                                    sendEmail();
                                  }
                                },
                                child: Text('Send Email'),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text("Connect Me!",
                        style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10,),


                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColors.yelloworange,
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.lightGrey.withOpacity(0.5),width: 2),
                              ),
                              child: Center(
                                child: IconButton(
                                hoverColor: AppColors.yelloworange,
                                onPressed: _launchDialer,
                                icon: FaIcon(FontAwesomeIcons.phone, color: AppColors.mediumPurpleGrey,size:20,),
                                ),
                              ),
                            ),

                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColors.yelloworange,
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.lightGrey.withOpacity(0.5),width: 2),
                              ),
                              child: Center(
                                child: IconButton(
                                hoverColor: AppColors.yelloworange,
                                onPressed:  _launchEmail,
                                icon: FaIcon(FontAwesomeIcons.envelope, color: AppColors.mediumPurpleGrey,size:20,),
                                ),
                              ),
                            ),

                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: AppColors.yelloworange,
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.lightGrey.withOpacity(0.5),width: 2),
                              ),
                              child: Center(
                                child: IconButton(
                                  hoverColor: AppColors.yelloworange,
                                  onPressed: () async {
                                    final Uri url = Uri.parse('https://www.linkedin.com/in/rishikakumari20/');
                                    if (!await launchUrl(url)) {
                                    throw 'Could not launch $url';
                                  }
                                  },
                                  icon: FaIcon(FontAwesomeIcons.linkedin, color: AppColors.mediumPurpleGrey,size:20,),
                                ),
                              ),
                            ),

                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: AppColors.yelloworange,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.lightGrey.withOpacity(0.5),width: 2),
                              ),
                              child: Center(
                                child: IconButton(
                                    hoverColor: AppColors.yelloworange,
                                    onPressed: () async {
                                    final Uri url = Uri.parse('https://www.instagram.com/rishikarr0603/');
                                    if (!await launchUrl(url)) {
                                      throw 'Could not launch $url';
                                    }
                                    },
                                  icon: FaIcon(FontAwesomeIcons.instagram, color: AppColors.mediumPurpleGrey,size:20,),
                                ),
                              ),
                            ),
                           Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.yelloworange,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: AppColors.lightGrey.withOpacity(0.5),width: 2),
                                ),
                                child: Center(
                                  child: IconButton(
                                    hoverColor: AppColors.yelloworange,
                                    onPressed: () async {
                                      final Uri url = Uri.parse('https://www.facebook.com/rishika.keshri.920');
                                      if (!await launchUrl(url)) {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    icon: FaIcon(FontAwesomeIcons.facebook, color: AppColors.mediumPurpleGrey,size:20,),
                                  ),
                                ),
                            ),
                            ],
                          ),
                        )
                      ],
                    )
                // Rest of your code...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
