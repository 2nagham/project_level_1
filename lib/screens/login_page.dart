import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:project_level_1/app_colors.dart';
import 'package:project_level_1/screens/register_page.dart';
import 'package:project_level_1/widgets/custom_button.dart';
import 'package:project_level_1/widgets/custom_text_field.dart';
import 'package:project_level_1/widgets/logo_test.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 160),
                Center(child: LogoText()),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Log in existing LOGO account',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 30),
                CustomTextField(
                  controller: userName,
                  hint: 'Username',
                  icon: Icons.person_outlined,
                ),
                SizedBox(height: 20),

                CustomTextField(
                  controller: password,
                  hint: 'Password',
                  icon: Icons.lock_clock_outlined,
                ),
                SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    child: Text(
                      'Forgot Password ?',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade800
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                CustomButton(text: 'LOG IN',),
                SizedBox(height: 10),
                Text(
                  'Or Sign In With',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.logo_facebook,
                      color: Colors.blue.shade900,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Ionicons.logo_google,
                      color: Colors.red.shade700,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Icon(Ionicons.logo_apple, size: 30),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create an account ?',
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
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        'Sign Up',
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
        Positioned(
          top: 0,
          left: 40,
          child: SvgPicture.asset('assets/images/box2.svg'),
        ),
        Positioned(
          right: 120,
          child: SvgPicture.asset('assets/images/box1.svg'),
        ),
      ],
    );
  }
}
