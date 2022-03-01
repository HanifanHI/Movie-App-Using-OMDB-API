import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// * COLOR
const Color cPurpleColor = Color(0xFF0D0846);
const Color cGreyColor = Color(0xFF4E4E4E);
const Color cLightGreyColor = Color(0xFF696969);

// * FONT WEIGHT
FontWeight medium = FontWeight.w500;
FontWeight regular = FontWeight.w400;
FontWeight light = FontWeight.w300;

// * TEXT STYLE
TextStyle purpleTextstyle = GoogleFonts.poppins(
  color: cPurpleColor,
  fontWeight: medium,
);
TextStyle greyTextstyle = GoogleFonts.poppins(
  color: cGreyColor,
  fontWeight: regular,
);
TextStyle lightGreyTextstyle = GoogleFonts.poppins(
  color: cLightGreyColor,
  fontWeight: light,
);
