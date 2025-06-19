// main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6B4F2A),
          brightness: Brightness.light,
          primary: const Color(0xFF6B4F2A),
          background: const Color(0xFFF8F5F1),
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F5F1),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFFF8F5F1),
          foregroundColor: Color(0xFF6B4F2A),
        ),
      ),
      home: const AuthGate(),
    );
  }
}
