// ignore_for_file: prefer_const_constructors

import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff2c2f33),
      body: SizedBox(
        height: height,
        child: ListView(
          // mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    FontAwesomeIcons.alignLeft,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 103,
                    child: Text(
                      'Omni Bot',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 102 / 844 * height,
                    height: 102 / 844 * height,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1485893086445-ed75865251e0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tJTIwcGVyc29ufGVufDB8MnwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 206,
                    height: 45 / 844 * height,
                    child: Text(
                      'Hello username!',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(height: 75.75),

            SizedBox(height: 75.75 / 844 * height),

            // SizedBox(height: 75.75 / 844 * height),
            // Container(
            //   width: double.infinity,
            //   // height: 1005,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //     boxShadow: const [
            //       BoxShadow(
            //         color: Color(0x3f000000),
            //         blurRadius: 4,
            //         offset: Offset(0, 4),
            //       ),
            //     ],
            //     color: Color(0xc15865f2),
            //   ),
            // ),
            // Blob.random(
            //   size: 500,
            //   edgesCount: 5,
            //   minGrowth: 4,
            // ),
          ],
        ),
      ),
    );
  }
}
