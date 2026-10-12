import 'package:flutter/material.dart';

class AppTheme {
  // ============================================================
  // COLORS
  // ============================================================

  // Main background
  static const Color black = Color(0xFF070B12);
  static const Color darkBlack = Color(0xFF04070C);

  // Glass colors
  static const Color glass = Color(0x14FFFFFF);
  static const Color glassLight = Color(0x20FFFFFF);

  // Borders
  static const Color glassBorder = Color(0x26FFFFFF);
  static const Color glassBorderLight = Color(0x40FFFFFF);

  // Accent colors
  static const Color blue = Color(0xFF8EB8FF);
  static const Color lightBlue = Color(0xFFB9D5FF);
  static const Color cyan = Color(0xFF69D9FF);
  static const Color purple = Color(0xFF8B5CF6);

  // Text colors
  static const Color white = Color(0xFFF5F7FA);
  static const Color grey = Color(0xFFADB7C5);
  static const Color darkGrey = Color(0xFF6F7B8C);

  // ============================================================
  // DARK THEME
  // ============================================================

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,

    brightness: Brightness.dark,

    // ----------------------------------------------------------
    // BACKGROUND
    // ----------------------------------------------------------

    scaffoldBackgroundColor: black,

    // ----------------------------------------------------------
    // COLOR SCHEME
    // ----------------------------------------------------------

    colorScheme: const ColorScheme.dark(
      primary: blue,
      secondary: cyan,

      surface: Color(0xFF0D131D),

      onPrimary: Color(0xFF07101D),
      onSecondary: Color(0xFF07101D),
      onSurface: white,
    ),

    // ----------------------------------------------------------
    // APP BAR
    // ----------------------------------------------------------

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: white,

      elevation: 0,
      scrolledUnderElevation: 0,

      centerTitle: false,

      titleTextStyle: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),

      iconTheme: IconThemeData(
        color: white,
        size: 22,
      ),
    ),

    // ----------------------------------------------------------
    // TEXT THEME
    // ----------------------------------------------------------

    textTheme: const TextTheme(

      // Large portfolio heading
      displayLarge: TextStyle(
        color: white,
        fontSize: 52,
        fontWeight: FontWeight.bold,
        letterSpacing: -2,
        height: 1.05,
      ),

      displayMedium: TextStyle(
        color: white,
        fontSize: 42,
        fontWeight: FontWeight.bold,
        letterSpacing: -1.5,
      ),

      displaySmall: TextStyle(
        color: white,
        fontSize: 34,
        fontWeight: FontWeight.bold,
        letterSpacing: -1,
      ),

      // Section heading
      headlineLarge: TextStyle(
        color: white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),

      headlineMedium: TextStyle(
        color: white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),

      headlineSmall: TextStyle(
        color: white,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),

      // Titles
      titleLarge: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),

      titleMedium: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),

      titleSmall: TextStyle(
        color: grey,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),

      // Body
      bodyLarge: TextStyle(
        color: grey,
        fontSize: 16,
        height: 1.6,
      ),

      bodyMedium: TextStyle(
        color: grey,
        fontSize: 14,
        height: 1.5,
      ),

      bodySmall: TextStyle(
        color: darkGrey,
        fontSize: 12,
      ),

      // Button / labels
      labelLarge: TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),

      labelMedium: TextStyle(
        color: grey,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),

    // ----------------------------------------------------------
    // CARD THEME
    // ----------------------------------------------------------

    cardTheme: CardThemeData(
      color: glass,

      elevation: 0,

      margin: EdgeInsets.zero,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),

        side: const BorderSide(
          color: glassBorder,
          width: 1,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // ELEVATED BUTTON
    // ----------------------------------------------------------

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: blue,

        foregroundColor: const Color(0xFF07101D),

        elevation: 0,

        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 16,
        ),

        minimumSize: const Size(0, 52),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),

        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // OUTLINED BUTTON
    // ----------------------------------------------------------

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: white,

        side: const BorderSide(
          color: glassBorderLight,
          width: 1,
        ),

        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 16,
        ),

        minimumSize: const Size(0, 52),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),

        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // TEXT BUTTON
    // ----------------------------------------------------------

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: blue,

        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),

        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // INPUT FIELDS
    // ----------------------------------------------------------

    inputDecorationTheme: InputDecorationTheme(
      filled: true,

      fillColor: glass,

      contentPadding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 17,
      ),

      hintStyle: const TextStyle(
        color: darkGrey,
        fontSize: 14,
      ),

      labelStyle: const TextStyle(
        color: grey,
        fontSize: 14,
      ),

      floatingLabelStyle: const TextStyle(
        color: blue,
        fontSize: 14,
      ),

      prefixIconColor: grey,
      suffixIconColor: grey,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),

        borderSide: const BorderSide(
          color: glassBorder,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),

        borderSide: const BorderSide(
          color: glassBorder,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),

        borderSide: const BorderSide(
          color: blue,
          width: 1.2,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),

        borderSide: const BorderSide(
          color: Colors.redAccent,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // ICON
    // ----------------------------------------------------------

    iconTheme: const IconThemeData(
      color: grey,
      size: 22,
    ),

    // ----------------------------------------------------------
    // DIVIDER
    // ----------------------------------------------------------

    dividerTheme: const DividerThemeData(
      color: glassBorder,
      thickness: 1,
    ),

    // ----------------------------------------------------------
    // CHIP
    // ----------------------------------------------------------

    chipTheme: ChipThemeData(
      backgroundColor: glass,

      selectedColor: blue.withValues(alpha: 0.18),

      side: const BorderSide(
        color: glassBorder,
      ),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),

      labelStyle: const TextStyle(
        color: grey,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),

      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
    ),

    // ----------------------------------------------------------
    // NAVIGATION BAR
    // ----------------------------------------------------------

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xDD0D131D),

      elevation: 0,

      indicatorColor: blue.withValues(alpha: 0.15),

      labelTextStyle: WidgetStateProperty.all(
        const TextStyle(
          color: grey,
          fontSize: 11,
          fontWeight: FontWeight.w500,
        ),
      ),

      iconTheme: WidgetStateProperty.all(
        const IconThemeData(
          color: grey,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // PROGRESS INDICATOR
    // ----------------------------------------------------------

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: blue,
      linearTrackColor: glass,
      circularTrackColor: glass,
    ),

    // ----------------------------------------------------------
    // SCROLLBAR
    // ----------------------------------------------------------

    scrollbarTheme: ScrollbarThemeData(
      thumbColor: WidgetStateProperty.all(
        glassBorderLight,
      ),

      radius: const Radius.circular(100),

      thickness: WidgetStateProperty.all(4),
    ),
  );
}