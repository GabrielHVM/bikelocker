import 'package:bikespace/classes/breakpoint.class.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterBtn extends StatelessWidget {
  const RegisterBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Não tem uma conta? ",
        style: GoogleFonts.ibmPlexSans(
          fontSize: Breakpoint.getWidthOfPage(context) * 0.04,
          color: const Color(0xFF404754),
        ),
        children: [
          TextSpan(
            text: "Registre-se",
            style: GoogleFonts.ibmPlexSans(
                fontSize: Breakpoint.getWidthOfPage(context) * 0.04,
                color: const Color(0xFF63D691),
                fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () => print("Registrando"),
          )
        ],
      ),
    );
  }
}
