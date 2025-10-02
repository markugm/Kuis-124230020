import 'package:flutter/material.dart';
import 'login_page.dart';

// Definisikan warna yang Bersih dan Sederhana
const Color primaryColor = Color(0xFF1E88E5); // Biru (Contoh)
const Color accentColor = Color(0xFFFFA726); // Orange (Contoh)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Store App',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: accentColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          elevation: 1, 
        ),
      ),
      // Mulai dari Halaman Login
      home: const LoginPage(),
    );
  }
}