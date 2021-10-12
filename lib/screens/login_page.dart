import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'welcome_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final ScrollController _scrollController = ScrollController(
      initialScrollOffset: width * 0.7375,
    );
    return Scaffold(
      backgroundColor: const Color(0xff2c2f33),
      body: SizedBox(
        height: height,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.0825),
            child: ListView(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    'Welcome to',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 57.67 / 844 * height),
                Center(
                  child: Text(
                    'Omni Bot',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 48,
                    ),
                  ),
                ),
                SizedBox(height: 57.67 / 844 * height),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    // width: 100,
                    height: 346 / 844 * height,
                    child: ListView(
                      // mainAxisSize: MainAxisSize.min,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      children: [
                        Container(
                          width: 300 / 390 * width,
                          height: 346 / 844 * height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff525252),
                          ),
                        ),
                        SizedBox(width: 20 / 390 * width),
                        Container(
                          width: 300 / 390 * width,
                          height: 346 / 844 * height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff525252),
                          ),
                        ),
                        SizedBox(width: 20 / 390 * width),
                        Container(
                          width: 300 / 390 * width,
                          height: 346 / 844 * height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff525252),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 57.67 / 844 * height),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WelcomeScreen(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 334 / 390 * width,
                    height: 72 / 844 * height,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 334 / 390 * width,
                          height: 72 / 844 * height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff4d58c4),
                          ),
                          padding: const EdgeInsets.only(
                            left: 49,
                            right: 42,
                            top: 23,
                            bottom: 22,
                          ),
                          child: SizedBox(
                            width: 243 / 390 * width,
                            height: 27 / 844 * height,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Container(
                                //   // width: 25,
                                //   // height: 18.75,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(8),
                                //     color: Colors.white,
                                //   ),
                                // ),
                                const Icon(
                                  FontAwesomeIcons.discord,
                                  color: Colors.white,
                                ),
                                SizedBox(width: width * 0.03),
                                Text(
                                  'LOGIN WITH DISCORD ',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
