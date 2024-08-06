import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class AppStyle {
  static List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.blue.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.purple.shade100,
    Colors.brown.shade100,
    Colors.pink.shade100,
    Colors.indigo.shade100,
    Colors.orange.shade100,
    Colors.deepOrange.shade100,
    Colors.deepPurple.shade100,
    Colors.teal.shade100,
    Colors.cyan.shade100,
    Colors.purpleAccent.shade100,
    Colors.deepPurpleAccent.shade100,
    Colors.brown.shade300,
    Colors.indigo.shade100,
  ];

  static TextStyle title =
      GoogleFonts.roboto(fontSize: 25.0, fontWeight: FontWeight.bold);

  static TextStyle mainTitle =
      GoogleFonts.roboto(fontSize: 18.0, fontWeight: FontWeight.bold);

  static TextStyle mainContent =
      GoogleFonts.nunito(fontSize: 16.0, fontWeight: FontWeight.normal);

  static TextStyle dateTitle =
      GoogleFonts.roboto(fontSize: 13.0, fontWeight: FontWeight.w500);
}
