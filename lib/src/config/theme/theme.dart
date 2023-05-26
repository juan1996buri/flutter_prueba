import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class ThemeColors {
  static const Color mintGreen = Color(0xFF0fb45f);
  static const Color lightCyan = Color(0xFF07f2db);
  static const Color softLilac = Color(0xFFABABAD);
  static const Color smokyWhite = Color(0xFFf1f2f9);
  static const Color earthOrange = Color(0xFFd49148);
  static const Color paleBlack = Color(0xFF545457);
  static const Color peachPink = Color(0xFFd59e95);
  static const Color lightwhite = Color(0xFFF8F6F5);
}

final TextStyle titleAppBarStyle = GoogleFonts.poppins(
    color: ThemeColors.smokyWhite, // Color específico
    fontSize: 15,
    fontWeight: FontWeight.bold);
final TextStyle nameAppBarStyle = GoogleFonts.poppins(
  color: ThemeColors.smokyWhite, // Color específico
  fontSize: 15,
);

final TextStyle itemMountStyle = GoogleFonts.poppins(
  color: ThemeColors.softLilac, // Color específico
  fontSize: 18,
  fontWeight: FontWeight.w500,
);
final TextStyle titleOfCardStyle = GoogleFonts.poppins(
  color: ThemeColors.softLilac, // Color específico
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

final TextStyle priceOfCardStyle = GoogleFonts.poppins(
  color: ThemeColors.mintGreen, // Color específico
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
final TextStyle titleItemCardOfCardStyle = GoogleFonts.poppins(
  color: ThemeColors.mintGreen, // Color específico
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

final TextStyle titleSectionStyle = GoogleFonts.poppins(
  color: ThemeColors.paleBlack, // Color específico
  fontSize: 22,
  fontWeight: FontWeight.bold,
);
final TextStyle itemMoveCardStyle = GoogleFonts.poppins(
  color: ThemeColors.softLilac, // Color específico
  fontSize: 13,
  fontWeight: FontWeight.bold,
);
final TextStyle titleButtomStyle = GoogleFonts.poppins(
  color: Colors.white, // Color específico
  fontSize: 16,
  fontWeight: FontWeight.w600,
);
