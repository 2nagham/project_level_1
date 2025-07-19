import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_level_1/screens/login_page.dart';
import 'package:project_level_1/widgets/logo_test.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 10),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 115),
                LogoText(),
                SizedBox(height: 125),
                Image.asset('assets/images/img1.jpg', width: 320),
                SizedBox(height: 40),
                Text(
                  'LOREM IPSUM ',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ' Lorem Ipsum is a dummy text \n      used as placeholder',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: 0,
          bottom: 450,
          left: 50,
          child: SvgPicture.asset('assets/images/line.svg'),
        ),
        Positioned(
          top: 0,
          bottom: 90,
          left: 18,
          child: SvgPicture.asset('assets/images/light.svg'),
        ),
        Positioned(
          top: 0,
          bottom: 490,
          left: 110,
          child: SvgPicture.asset('assets/images/line.svg'),
        ),
        Positioned(
          top: 0,
          bottom: 200,
          left: 78,
          child: SvgPicture.asset('assets/images/light.svg'),
        ),
      ],
    );
  }
}
