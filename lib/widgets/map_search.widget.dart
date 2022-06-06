import 'package:bikespace/classes/breakpoint.class.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      right: 32,
      left: 32,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 8,
            ),
            const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              color: Color(0xFF404754),
            ),
            Expanded(
              child: TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                textAlign: TextAlign.center,
                textInputAction: TextInputAction.search,
                style: GoogleFonts.ibmPlexSans(
                  fontSize: Breakpoint.getWidthOfPage(context) * 0.04,
                  color: const Color(0xFF404754),
                ),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    hintText: "Inserir endereço"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
