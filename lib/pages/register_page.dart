import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_wall_uts_ardiansyah/components/button.dart';
import 'package:the_wall_uts_ardiansyah/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();

  void signUp() async {
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    if (passwordTextController.text != confirmPasswordTextController.text) {
      Navigator.pop(context);
      displayMessage("Password don't match!");
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailTextController.text,
          password: passwordTextController.text);
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessage(e.code);
    }
  }

  void displayMessage(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          message,
          style: GoogleFonts.bebasNeue(),
        ),
      ),
    );
  }

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
                'Hello There',
                style: GoogleFonts.bebasNeue(
                  fontSize: 42,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Register below with your details',
                style: GoogleFonts.bebasNeue(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obsureText: false),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyTextField(
                    controller: passwordTextController,
                    hintText: 'Password',
                    obsureText: true),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyTextField(
                    controller: confirmPasswordTextController,
                    hintText: 'Confirm Password',
                    obsureText: true),
              ),
              const SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: MyButton(onTap: signUp, text: 'Sign Up')),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You\'re a member?',
                    style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
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
