import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Comment extends StatelessWidget {
  final String text;
  final String user;
  final String time;
  const Comment({
    super.key,
    required this.text,
    required this.user,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.bebasNeue(),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                user,
                style: GoogleFonts.bebasNeue(color: Colors.grey[400]),
              ),
              Text(" • ",
                  style: GoogleFonts.bebasNeue(color: Colors.grey[400])),
              Text(
                time,
                style: GoogleFonts.bebasNeue(color: Colors.grey[400]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
