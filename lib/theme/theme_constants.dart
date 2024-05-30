import 'package:flutter/material.dart';

const primaryColor = Colors.deepOrange;
const secondaryColor = Colors.orange;


ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: primaryColor
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.green,
    ),
    elevatedButtonTheme: useElevatedButtonTheme(
        Colors.white,
        secondaryColor),
    inputDecorationTheme: useInputDecorationTheme(
        secondaryColor.withOpacity(0.1)
    ),
    textTheme: useTextTheme(Colors.black, secondaryColor)
);

ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: secondaryColor
    ),
    elevatedButtonTheme: useElevatedButtonTheme(
        Colors.white,
        primaryColor),
    inputDecorationTheme: useInputDecorationTheme(
        primaryColor.withOpacity(0.1)
    ),
    textTheme: useTextTheme(Colors.white, primaryColor)
);

ElevatedButtonThemeData useElevatedButtonTheme(Color foregroundColor, Color backgroundColor){
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(vertical: 16, horizontal: 40)
      ),
      shape: WidgetStateProperty.all(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(18))
          )
      ),
      backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
      foregroundColor: WidgetStateProperty.all<Color>(foregroundColor),
    ),
  );
}

InputDecorationTheme useInputDecorationTheme(Color fillColor){
  return InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide.none,
    ),
    filled: true,
    fillColor: fillColor,
  );
}
TextTheme useTextTheme(Color textColor, Color highlightColor){
  return const TextTheme(
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
      )
  );
}

extension CustomTextStyles on TextTheme {
  TextStyle get highlight => const TextStyle(
    color: Colors.blue,
  );
}