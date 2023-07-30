import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_wall_uts_ardiansyah/auth/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBMhCmzi7OSv4k_zEreZ9v5AADoQfnSHaY",
          appId: "1:55067920808:web:62d2b09318bd390cc4359d",
          messagingSenderId: "55067920808",
          projectId: "projectapk-e9fe6"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
