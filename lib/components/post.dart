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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
            padding: const EdgeInsets.all(10),
            child: const Icon(Icons.person, color: Colors.white),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user,
                style: GoogleFonts.bebasNeue(color: Colors.grey[500]),
              ),
              const SizedBox(height: 10),
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
