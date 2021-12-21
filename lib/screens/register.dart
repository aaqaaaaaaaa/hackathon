import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/otpScreen.dart';
import 'package:untitled/utilities/styles.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


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
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Continue with your phone number',
              style: TextStyle(
                fontFamily: fontFamily,
                color: primaryColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
              style: TextStyle(
                fontFamily: fontFamily,
                color: Color(0xff857FB4),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Phone Number',
              style: TextStyle(
                fontFamily: fontFamily,
                color: primaryColor,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              autofocus: true,
              maxLines: 1,
              cursorColor: primaryColor,
              style: TextStyle(color: primaryColor, fontFamily: fontFamily),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffF5F4FF)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffF5F4FF),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: const Color(0xffF5F4FF)),
            ),
            const SizedBox(height: 10,),
            const Text(
              'Password',
              style: TextStyle(
                fontFamily: fontFamily,
                color: primaryColor,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            TextFormField(
              autofocus: true,
              maxLines: 1,
              cursorColor: primaryColor,
              style: const TextStyle(color: primaryColor, fontFamily: fontFamily),
              // keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffF5F4FF)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xffF5F4FF),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  border: InputBorder.none,
                  filled: true,
                  fillColor: const Color(0xffF5F4FF)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By click continue you are agree with\nour Terms and Condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff857FB4),fontSize: 12),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
          // _pageController.nextPage(
          //   duration: const Duration(milliseconds: 500),
          //   curve: Curves.easeInOut,
          // );
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
