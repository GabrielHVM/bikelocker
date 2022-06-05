import 'package:bikespace/classes/breakpoint.class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class SocialNetworkBtn extends StatelessWidget {
  final String socialNetwork;
  const SocialNetworkBtn({Key? key, required this.socialNetwork})
      : super(key: key);

  Widget getButtonIcon() {
    Widget buttonIcon = const FaIcon(FontAwesomeIcons.triangleExclamation);
    switch (socialNetwork) {
      case "Google":
        buttonIcon = const FaIcon(
          FontAwesomeIcons.google,
          color: Color(0XFF404754),
        );
        break;
      case "Facebook":
        buttonIcon = const FaIcon(
          FontAwesomeIcons.facebookSquare,
          color: Color(0XFF404754),
        );
        break;
      case "Apple":
        buttonIcon = const FaIcon(
          FontAwesomeIcons.appleWhole,
          color: Color(0XFF404754),
        );
        break;
    }
    return buttonIcon;
  }

  String getButtonTitle() {
    String buttonTitle = "Unknown Social Network";
    switch (socialNetwork) {
      case "Google":
        buttonTitle = "Continuar com Google";
        break;
      case "Facebook":
        buttonTitle = "Continuar com Facebook";
        break;
      case "Apple":
        buttonTitle = "Continuar com Apple";
        break;
    }
    return buttonTitle;
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Color(0xFF63D691))),
      onPressed: () {},
      child: SizedBox(
        width: Breakpoint.getWidthOfPage(context) * 0.64,
        height: Breakpoint.getHeightOfPage(context) * 0.037,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: getButtonIcon(),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                getButtonTitle(),
                style: GoogleFonts.ibmPlexSans(
                  fontSize: Breakpoint.getWidthOfPage(context) * 0.04,
                  color: const Color(0xFF404754),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
