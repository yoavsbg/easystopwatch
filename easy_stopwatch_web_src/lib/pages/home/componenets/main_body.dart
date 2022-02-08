import 'dart:js';

import 'package:easy_stopwatch_web/utils/constants.dart';
import 'package:easy_stopwatch_web/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
          desktop: _buildUi(1000.0),
          tablet: _buildUi(760.0),
          mobile: _buildUi(MediaQuery.of(context).size.width * 0.8)),
    );
  }

  void _launchURL(String url) async {
    await launch(url);
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Container(
              child: Flex(
                direction: constraints.maxWidth > 720
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  Expanded(
                    flex: constraints.maxWidth > 720 ? 1 : 0,
                    child: Image.asset("assets/phone.png"),
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720 ? 1 : 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Get the most Easy Stopwatch app",
                            style: GoogleFonts.oswald(
                                color: kPrimaryDarkColor,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Easy Stopwatch can be used for measuring any action you like. \nJust Tap on the screen to start or stop.",
                            style: GoogleFonts.oswald(
                                color: kTextColor,
                                fontSize: 24.0,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton.icon(
                                onPressed: () {
                                  _launchURL(
                                      "https://apps.apple.com/us/app/easy-stopwatch-tap-to-start/id1546825959");
                                },
                                icon: Image.asset(
                                  "assets/appstore.png",
                                ),
                                label: const Text("")),
                            TextButton.icon(
                                onPressed: () {
                                  _launchURL(
                                      "https://play.google.com/store/apps/details?id=yoavsabag.easystopwatch");
                                },
                                icon: Image.asset(
                                  "assets/googleplay.png",
                                ),
                                label: const Text(""))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
