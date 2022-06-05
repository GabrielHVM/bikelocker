import 'package:bikespace/widgets/login_btn.widget.dart';
import 'package:bikespace/widgets/or_divider.widget.dart';
import 'package:bikespace/widgets/register_btn.widget.dart';
import 'package:bikespace/widgets/social_network_btn.widget.dart';

import 'package:flutter/material.dart';

import '../classes/breakpoint.class.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0XFFEDF1F6),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  width: Breakpoint.getWidthOfPage(context) * 0.40,
                  height: Breakpoint.getHeightOfPage(context) * 0.25,
                  image: const AssetImage('assets/logo.png'),
                ),
                SizedBox(
                  height: Breakpoint.getHeightOfPage(context) * 0.021,
                ),
                const SocialNetworkBtn(socialNetwork: "Facebook"),
                SizedBox(
                  height: Breakpoint.getHeightOfPage(context) * 0.021,
                ),
                const SocialNetworkBtn(socialNetwork: "Google"),
                SizedBox(
                  height: Breakpoint.getHeightOfPage(context) * 0.021,
                ),
                const SocialNetworkBtn(socialNetwork: "Apple"),
                SizedBox(
                  height: Breakpoint.getHeightOfPage(context) * 0.021,
                ),
                const OrDivider(),
                SizedBox(
                  height: Breakpoint.getHeightOfPage(context) * 0.021,
                ),
                const LoginButton(),
                SizedBox(
                  height: Breakpoint.getHeightOfPage(context) * 0.021,
                ),
                const RegisterBtn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
