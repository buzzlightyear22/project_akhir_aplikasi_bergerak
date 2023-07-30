import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_wall_uts_ardiansyah/components/notification_box.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.notifications,
          color: Colors.white,
        ),
        title: Text('NOTIFICATIONS', style: GoogleFonts.bebasNeue()),
        backgroundColor: Colors.redAccent.shade700,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: ListView(
        children: const [
          MyNotificationBox(
              userName: "user23@gmail.com",
              text: "liked your post",
              datePost: "15/06/2023"),
          MyNotificationBox(
              userName: "user34@gmail.com",
              text: "commented in your post",
              datePost: "15/06/2023"),
          MyNotificationBox(
              userName: "user12@gmail.com",
              text: "liked your post",
              datePost: "14/06/2023"),
          MyNotificationBox(
              userName: "user56@gmail.com",
              text: "liked your post",
              datePost: "14/06/2023"),
          MyNotificationBox(
              userName: "user25@gmail.com",
              text: "commented your post",
              datePost: "14/06/2023"),
          MyNotificationBox(
              userName: "user78@gmail.com",
              text: "liked your post",
              datePost: "14/06/2023"),
        ],
      ),
    );
  }
}
