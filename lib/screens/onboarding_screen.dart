import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/register.dart';
import 'package:untitled/utilities/styles.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 30.0 : 15.0,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF7B51D3) : const Color(0xffE8E5FF),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   stops: [0.1, 0.4, 0.7, 0.9],
              //   colors: [
              //     Color(0xFFffffff),
              //     // Color(0xFF4563DB),
              //     // Color(0xFF5036D5),
              //     // Color(0xFF5B16D0),
              //   ],
              // ),
              ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                   margin: EdgeInsets.only(
                      right: 20,
                      left: MediaQuery.of(context).size.width / 1.24),
                  alignment: Alignment.topRight,
                  child: FlatButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen(),)),
                    child: Row(
                      children: [
                        Text(
                          'Skip',
                          style: TextStyle(
                            color: color2level,
                            fontFamily: fontFamily,
                            fontSize: 20.0,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,

                          color: color2level,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 570.0,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Send Messages.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width - 20),
                              child: Text(
                                'Easy chat with your friends',
                                style: kTitleStyle,
                                maxLines: 2,

                                overflow: TextOverflow.clip,
                              ),
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                              'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Video Call.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Text(
                              'Video call with your community',
                              style: kTitleStyle,
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Notification.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            Text(
                              'Get notified when someone chat you ',
                              style: kTitleStyle,
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                              'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                              style: kSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _currentPage != _numPages - 1?_buildPageIndicator():[],
                ),
                _currentPage != _numPages - 1
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  _pageController.previousPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(Icons.arrow_back_ios_sharp,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(20),
                                  primary: _currentPage == 0
                                      ? ebuttonColor
                                      : buttonColor, // <-- Button color
                                  // onPrimary: Colors.red, // <-- Splash color
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeInOut,
                                  );
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

                              // Align(
                              //   alignment: FractionalOffset.bottomRight,
                              //   child: CircleAvatar(
                              //     maxRadius: 50,
                              //     backgroundColor: buttonColor,
                              //     child: InkWell(
                              //
                              //         // backgroundColor:  buttonColor,
                              //         onTap: () {
                              //           _pageController.nextPage(
                              //             duration: Duration(milliseconds: 500),
                              //             curve: Curves.easeInOut,
                              //           );
                              //         },
                              //         child: Icon(
                              //           Icons.arrow_forward_ios,
                              //           color: Colors.white,
                              //           size: 18,
                              //         )
                              //         // Row(
                              //         //   mainAxisAlignment: MainAxisAlignment.center,
                              //         //   mainAxisSize: MainAxisSize.min,
                              //         //   children: <Widget>[
                              //         //     Text(
                              //         //       'Next',
                              //         //       style: TextStyle(
                              //         //         color: Colors.black,
                              //         //         fontSize: 22.0,
                              //         //       ),
                              //         //     ),
                              //         //     SizedBox(width: 10.0),
                              //         //     Icon(
                              //         //       Icons.arrow_forward,
                              //         //       color: Colors.black,
                              //         //       size: 30.0,
                              //         //     ),
                              //         //   ],
                              //         // ),
                              //         ),
                              //   ),
                              // ),
                            ]),
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 3),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ));
                          },
                          child: const Text(
                            'Get started',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: 20.0,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ButtonStyle(
                            maximumSize:
                                MaterialStateProperty.all(const Size(100, 50)),
                            fixedSize: MaterialStateProperty.all(const Size(100, 50)),
                            backgroundColor:
                                MaterialStateProperty.all(buttonColor),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
      // bottomSheet: _currentPage == _numPages - 1
      //     ? Container(
      //         height: 50.0,
      //         width: double.infinity,
      //         color: buttonColor,
      //         child: GestureDetector(
      //           onTap: () => print('Get started'),
      //           child: Center(
      //             child: Padding(
      //               padding: EdgeInsets.symmetric(vertical:  10.0),
      //               child: Text(
      //                 'Get started',
      //                 style: TextStyle(
      //                   color: Color(0xFF5B16D0),
      //                   fontSize: 20.0,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       )
      //     : Text(''),
    );
  }
}
