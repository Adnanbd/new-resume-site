import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_adnan/utils.dart';

class PageTitleBar extends StatelessWidget {
  final String label;
  const PageTitleBar({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
      alignment: Alignment.topCenter,
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          label,
          style: GoogleFonts.xanhMono(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: mainColor,
          ),
        ),
      ),
    );
  }
}
