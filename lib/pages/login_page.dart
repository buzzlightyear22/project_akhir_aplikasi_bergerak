import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_wall_uts_ardiansyah/components/button.dart';
import 'package:the_wall_uts_ardiansyah/components/text_field.dart';
import 'package:the_wall_uts_ardiansyah/pages/home_page.dart';
import 'package:the_wall_uts_ardiansyah/pages/register_page.dart';
import 'package:the_wall_uts_ardiansyah/pages/reset_password.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

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
                height: 200,
                width: 200,
                fit: BoxFit.fitWidth,
              ),
              Text(
                'Hello Again',
                style: GoogleFonts.bebasNeue(
                  fontSize: 42,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Welcome back, you\'ve been missed!',
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
                      obsureText: true)),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResetPasswordPage(),
                            ));
                      },
                      child: Text(
                        'Reset Password?',
                        style: GoogleFonts.bebasNeue(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyButton(onTap: () {}, text: 'Sign In'),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Register now',
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
