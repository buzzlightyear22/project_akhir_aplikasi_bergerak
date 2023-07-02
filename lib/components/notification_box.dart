import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNotificationBox extends StatelessWidget {
  final String userName;
  final String text;
  final String datePost;
  const MyNotificationBox(
      {super.key,
      required this.userName,
      required this.text,
      required this.datePost});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[400]),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        userName,
                        style:
                            GoogleFonts.bebasNeue(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        text,
                        style: GoogleFonts.bebasNeue(),
                      ),
                    ],
                  ),
                  Text(
                    datePost,
                    style: GoogleFonts.bebasNeue(color: Colors.grey[500]),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
