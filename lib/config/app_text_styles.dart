import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class AppTextStyles {
  static final TextStyle fonte = GoogleFonts.quantico(
    fontSize: 37,

    // fontWeight: FontWeight.w600,
  );
  static final TextStyle title = GoogleFonts.quantico(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle button = GoogleFonts.quantico(
    fontSize: 20,
    color: Colors.white,
    // fontWeight: FontWeight.w600,
  );
  static final TextStyle body = GoogleFonts.quantico(
    fontSize: 13,
    fontWeight: FontWeight.normal,
  );
}