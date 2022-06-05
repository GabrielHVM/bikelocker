import 'package:bikespace/classes/breakpoint.class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: Breakpoint.getWidthOfPage(context) * 0.31,
          child: const Divider(
            color: Color(0xFF6D788D),
            thickness: 2,
          ),
        ),
        SizedBox(
          width: Breakpoint.getWidthOfPage(context) * 0.016,
        ),
        Text(
          "OU",
          style: GoogleFonts.ibmPlexSans(
              fontSize: Breakpoint.getWidthOfPage(context) * 0.04,
              color: const Color(0xFF63D691),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: Breakpoint.getWidthOfPage(context) * 0.016,
        ),
        SizedBox(
          width: Breakpoint.getWidthOfPage(context) * 0.31,
          child: const Divider(
            color: Color(0xFF6D788D),
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
