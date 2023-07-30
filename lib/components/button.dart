import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.redAccent[700],
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
