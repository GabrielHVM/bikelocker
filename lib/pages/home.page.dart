import 'package:bikespace/classes/breakpoint.class.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0XFF31C66C),
          child: Center(
            child: Image(
              width: Breakpoint.getWidthOfPage(context) * 0.40,
              height: Breakpoint.getHeightOfPage(context) * 0.25,
              image: const AssetImage('assets/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
