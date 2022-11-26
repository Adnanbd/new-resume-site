import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_adnan/utils.dart';

class HoveredButton extends StatefulWidget {
  final Function onpressed;
  final bool leftBorder;
  final bool rightBorder;
  final String label;

  const HoveredButton({
    Key? key,
    required this.leftBorder,
    required this.onpressed,
    required this.label,
    required this.rightBorder,
  }) : super(key: key);

  @override
  State<HoveredButton> createState() => _HoveredButtonState();
}

class _HoveredButtonState extends State<HoveredButton> {
  bool isMenuButtonHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Tapped");
        widget.onpressed();
      },
      onHover: (value) {
        setState(() {
          isMenuButtonHover = !isMenuButtonHover;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        decoration: BoxDecoration(
          color: isMenuButtonHover ? mainColor : secondaryColor,
          border: Border(
            right: BorderSide(
              color: mainColor,
              width: widget.rightBorder ? 2 : 0,
            ),
            left: BorderSide(
              color: mainColor,
              width: widget.leftBorder ? 2 : 0,
            ),
          ),
        ),
        child: Text(
          widget.label,
          style: GoogleFonts.xanhMono(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isMenuButtonHover ? secondaryColor : mainColor,
          ),
        ),
      ),
    );
  }
}
