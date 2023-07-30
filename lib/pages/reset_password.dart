import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/images/logo.png',
                height: 150,
                width: 150,
                fit: BoxFit.fitWidth,
              ),
              Text(
                'Hello you',
                style: GoogleFonts.bebasNeue(
                  fontSize: 42,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'wanna reset your password?',
                style: GoogleFonts.bebasNeue(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.redAccent.shade700),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Email',
                      hintStyle: GoogleFonts.bebasNeue(),
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.redAccent.shade700),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Old Password',
                      hintStyle: GoogleFonts.bebasNeue(),
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.redAccent.shade700),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'New Password',
                      hintStyle: GoogleFonts.bebasNeue(),
                      fillColor: Colors.grey[200],
                      filled: true),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.redAccent[700],
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'back to login',
                        style: GoogleFonts.bebasNeue(
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have you changed your mind?',
                    style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Login now',
                      style: GoogleFonts.bebasNeue(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
