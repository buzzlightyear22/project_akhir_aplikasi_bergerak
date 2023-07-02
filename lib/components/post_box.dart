import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPostBox extends StatelessWidget {
  final String userName;
  final String text;
  final String commentCount;
  const MyPostBox(
      {super.key,
      required this.userName,
      required this.text,
      required this.commentCount});

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
                  Text(
                    userName,
                    style:
                        GoogleFonts.bebasNeue(color: Colors.redAccent.shade700),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    text,
                    style: GoogleFonts.bebasNeue(),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.comment,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(commentCount,
                        style: const TextStyle(color: Colors.grey)),
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
