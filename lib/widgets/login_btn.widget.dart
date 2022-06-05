// ignore_for_file: unnecessary_const

import 'package:bikespace/classes/breakpoint.class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Breakpoint.getHeightOfPage(context) * 0.05);
    return SizedBox(
      width: Breakpoint.getWidthOfPage(context) * 0.72,
      height: Breakpoint.getHeightOfPage(context) * 0.05,
      child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0XFF63D691),
              side: const BorderSide(
                color: Color(0xFF63D691),
              )),
          child: Text(
            "Entrar com usuário e senha",
            style: GoogleFonts.ibmPlexSans(
              fontSize: Breakpoint.getWidthOfPage(context) * 0.04,
              color: const Color(0xFFEDF1F6),
            ),
          )),
    );
  }
}
