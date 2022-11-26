import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_adnan/main.dart';
import 'package:portfolio_adnan/utils.dart';
import 'package:portfolio_adnan/widgets/hovered_button.dart';
import 'package:portfolio_adnan/widgets/menu_hovered_button.dart';
import 'package:portfolio_adnan/widgets/page_titile_bar.dart';
import 'package:portfolio_adnan/widgets/section.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isCvButtonHover = false;
  var _hover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        width: widthMain(context),
        height: heightMain(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: mainColor,
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: mainColor,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                children: [
                  MenuHoveredButton(
                    rightBorder: true,
                    leftBorder: false,
                    onpressed: () {},
                    label: "S.Adnan",
                  ),
                  Expanded(child: Container()),
                  HoveredButton(
                    rightBorder: true,
                    leftBorder: true,
                    onpressed: () {},
                    label: "Works",
                  ),
                  HoveredButton(
                    rightBorder: true,
                    leftBorder: false,
                    onpressed: () {},
                    label: "Resume",
                  ),
                  HoveredButton(
                    rightBorder: false,
                    leftBorder: false,
                    onpressed: () {},
                    label: "About",
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Section(
                        content: [
                          Image.asset(
                            "assets/profile_img.png",
                            height: 180,
                            fit: BoxFit.fitHeight,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SelectableText.rich(
                            TextSpan(
                              style: GoogleFonts.xanhMono(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: mainColor,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  mouseCursor:
                                      MaterialStateMouseCursor.clickable,
                                  onEnter: (_) => setState(() => _hover = true),
                                  onExit: (_) => setState(() => _hover = false),
                                  text: "I'm Shoeb Adnan",
                                  style: TextStyle(
                                    color: Colors.black,
                                    decoration: _hover
                                        ? TextDecoration.none
                                        : TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' - Working as a Flutter Developer for 1 year, Building beautiful apps and meeting new peoples.',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                            onTap: () => print('Tapped'),
                            toolbarOptions: ToolbarOptions(
                              copy: false,
                              selectAll: false,
                            ),
                            showCursor: false,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              print("Tapped");
                              //widget.onpressed();
                            },
                            onHover: (value) {
                              setState(() {
                                isCvButtonHover = !isCvButtonHover;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 25),
                              decoration: BoxDecoration(
                                color: isCvButtonHover
                                    ? mainColor
                                    : secondaryColor,
                                border: Border.all(color: mainColor, width: 2),
                              ),
                              child: Text(
                                "Download CV",
                                style: GoogleFonts.xanhMono(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: isCvButtonHover
                                      ? secondaryColor
                                      : mainColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                        label: "Hello",
                      ),
                      Section(
                        content: [
                          Container(
                            height: 100,
                            width: 200,
                            color: Colors.teal,
                          ),
                        ],
                        label: "Works",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
