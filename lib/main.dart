import 'package:flutter/material.dart';
import 'package:urban_toast/screens/auth/login_page.dart';

const Color darkColor = Color(0xFF0E0F14); 
const Color accentColor = Color(0xFFC57C4F);

void main() {
  runApp(const MyApp());
}


// Define the light theme
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: accentColor,
  primaryColorDark:  darkColor,
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: accentColor,
      foregroundColor: Colors.white
    )
  )
);

// Define the dark theme
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: accentColor,
  scaffoldBackgroundColor: darkColor,
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 16, color: Colors.white70, fontFamily: 'monserrat'), // Default font
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: accentColor,
      foregroundColor: Colors.white
    )
  )
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Urban Toast',
      theme: lightTheme,
      home: Scaffold(
          body: LoginPage(),
      ),
    );
  }
}
