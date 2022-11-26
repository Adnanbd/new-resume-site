import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_adnan/utils.dart';
import 'package:portfolio_adnan/widgets/page_titile_bar.dart';

class Section extends StatefulWidget {
  final String label;
  final List<Widget> content;
  const Section({Key? key, required this.content, required this.label}) : super(key: key);

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          PageTitleBar(label: widget.label),
          //
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: mainColor,
                    width: 2,
                  ),
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.content,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
