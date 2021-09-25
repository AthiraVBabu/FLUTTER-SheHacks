// import 'package:app/pages/home_page.dart';
// import 'package:app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    themeMode: ThemeMode.light,
    theme: ThemeData(primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    primaryTextTheme: GoogleFonts.latoTextTheme()
    ),
    darkTheme:ThemeData(
      brightness: Brightness.dark,
    ),
    initialRoute: "/",
    // routes: {
    //   "/": (context) => LoginPage(),
    //   "/home":(context) => HomePage(),
    //   "/Login": (context) => LoginPage(),
    // },
    );
  }
}