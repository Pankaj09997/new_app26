import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeClass {
  static ThemeData lightTheme(BuildContext context) => ThemeData(

        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
           cardColor: Colors.white,
           // ignore: deprecated_member_use
           buttonColor: dark,
     canvasColor: white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
     fontFamily: GoogleFonts.poppins().fontFamily,
     // ignore: deprecated_member_use
     buttonColor: lightbluish,
     cardColor: Colors.black,
     canvasColor: dark,
    
     appBarTheme: AppBarTheme(
      
          color: Colors.black,
          
          elevation: 0.0,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
  );
    static Color white = Vx.gray100;
  static Color dark = Vx.gray800;
  static Color lightbluish = Vx.purple100;
   static Color darkbluish = Vx.purple900;
}
//  //color template
