import 'package:flutter/material.dart';
import 'package:untitled/screens/homePage.dart';
import 'package:untitled/utilities/styles.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: primaryColor,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/img.png'),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Verify OTP',
              style: TextStyle(
                  color: primaryColor,
                  fontFamily: fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 28),
            ),
            const SizedBox(
              height: 13,
            ),
            const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.', style: TextStyle(
                color: primaryColor,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 12),),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
        },
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.arrow_forward_ios,
              color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          primary: buttonColor, // <-- Button color
          // onPrimary: Colors.red, // <-- Splash color
        ),
      ),
    );
  }
}



//
// const Color accentPurpleColor = Color(0xFF6A53A1);
// const Color accentPinkColor = Color(0xFFF99BBD);
// const Color accentDarkGreenColor = Color(0xFF115C49);
// const Color accentYellowColor = Color(0xFFFFB612);
// const Color accentOrangeColor = Color(0xFFEA7A3B);
//
// class Example {
//   final String title;
//   final String subtitle;
//   final GestureTapCallback? onTap;
//   final Route<Object?> route;
//
//   Example({
//     required this.title,
//     required this.subtitle,
//     required this.route,
//     this.onTap,
//   });
// }

// List<Example> examples = [
//   Example(
//     title: "OTP TextField Example 1",
//     subtitle: "Verification Screen 1",
//     route: MaterialPageRoute(
//       builder: (context) => VerificationScreen1(),
//     ),
//   ),
//   Example(
//     title: "OTP TextField Example 2",
//     subtitle: "Verification Screen 2",
//     route: MaterialPageRoute(
//       builder: (context) => VerificationScreen2(),
//     ),
//   ),
// ];