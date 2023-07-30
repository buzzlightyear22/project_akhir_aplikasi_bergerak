import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_wall_uts_ardiansyah/components/text_box.dart';
import 'package:the_wall_uts_ardiansyah/pages/login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
        title: Text(
          "PROFILE",
          style: GoogleFonts.bebasNeue(),
        ),
        backgroundColor: Colors.redAccent.shade700,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: ListView(children: [
        const SizedBox(height: 50),
        const Icon(
          Icons.person,
          size: 72,
        ),
        const SizedBox(height: 10),
        Text(
          "user1@gmail.com",
          textAlign: TextAlign.center,
          style: GoogleFonts.bebasNeue(),
        ),
        const SizedBox(height: 50),
        Text(
          "My Details",
          textAlign: TextAlign.center,
          style: GoogleFonts.bebasNeue(fontSize: 25),
        ),
        const MyTextBox(text: 'steve', sectionName: 'username'),
        const MyTextBox(text: 'empty', sectionName: 'bio')
      ]),
    );
  }
}
