import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_level_1/app_colors.dart';
import 'package:project_level_1/screens/login_page.dart';
import 'package:project_level_1/widgets/custom_text_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Padding(
          padding: EdgeInsets.only(top: 80.0, left: 50.0, right: 50.0,bottom: 10.0),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Lets Get Started!',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Create an account on MNZL to get all features',
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    
                  ),
                ),
                SizedBox(height: 20),
                
                CustomTextField(
                  controller: firstName,
                  hint: 'First Name',
                  icon: Icons.person_outlined,
                ),
                SizedBox(height: 15),
                  CustomTextField(
                  controller: firstName,
                  hint: 'Last Name',
                  icon: Icons.person_outlined,
                ),
                SizedBox(height: 15),
                  CustomTextField(
                  controller: firstName,
                  hint: 'User Name',
                  icon: Icons.person_outlined,
                ),
                SizedBox(height: 15),
                  CustomTextField(
                  controller: firstName,
                  hint: 'email',
                  icon: Icons.email_outlined,
                ),
                SizedBox(height: 15),
                  CustomTextField(
                  controller: firstName,
                  hint: 'Password',
                  icon: Icons.lock_clock_outlined,
                ),
                SizedBox(height: 15),
                  CustomTextField(
                  controller: firstName,
                  hint: 'Confirm Password',
                  icon: Icons.lock_clock_outlined,
                ),
                SizedBox(height: 36),
                Container(
                  width: 199,
                  height: 53,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 80,
                        spreadRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [AppColors.primary, Colors.black45],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'CREATE',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  
                ),
                  SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
