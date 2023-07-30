import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostBox extends StatelessWidget {
  final String message;
  final String user;
  const PostBox({
    super.key,
    required this.message,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                user,
                style: GoogleFonts.bebasNeue(),
              ),
              Text(
                message,
                style: GoogleFonts.bebasNeue(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
