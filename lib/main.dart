//import 'package:bikespace/pages/home.page.dart';
import 'package:bikespace/pages/login.page.dart';
import 'package:bikespace/pages/map.page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.ibmPlexSansTextTheme(),
        primarySwatch: Colors.blue,
      ),
      home: const MapPage(),
    );
  }
}
