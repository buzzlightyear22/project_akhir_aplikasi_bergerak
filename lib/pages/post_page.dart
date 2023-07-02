import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:the_wall_uts_ardiansyah/pages/login_page.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        title: Text('POST', style: GoogleFonts.bebasNeue()),
        backgroundColor: Colors.redAccent.shade700,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //box 1
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[400]),
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
                                    'user1@gmail.com',
                                    style: GoogleFonts.bebasNeue(
                                        color: Colors.redAccent.shade700),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    'hello test',
                                    style: GoogleFonts.bebasNeue(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const LikeButton(
                                size: 30,
                                likeCount: 25,
                                countPostion: CountPostion.bottom,
                              ),
                              Column(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Icon(
                                      Icons.comment,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text("12",
                                        style: TextStyle(color: Colors.grey)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        margin: const EdgeInsets.only(bottom: 5, top: 15),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "this is my new comment",
                              style: GoogleFonts.bebasNeue(),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "user34",
                                  style: GoogleFonts.bebasNeue(
                                      color: Colors.grey[500]),
                                ),
                                Text(
                                  " • ",
                                  style: GoogleFonts.bebasNeue(
                                      color: Colors.grey[500]),
                                ),
                                Text(
                                  "15/06/2023",
                                  style: GoogleFonts.bebasNeue(
                                      color: Colors.grey[500]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                          highlightColor: Colors.grey[300],
                          hoverColor: Colors.grey[300],
                          splashColor: Colors.redAccent.shade700,
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_down_rounded)),
                    ],
                  ),
                ),

                //box 2
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[400]),
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
                                'user14@gmail.com',
                                style: GoogleFonts.bebasNeue(
                                    color: Colors.redAccent.shade700),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'What if i want to learn coding? How do i get started?',
                                style: GoogleFonts.bebasNeue(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const LikeButton(
                            size: 30,
                            likeCount: 232,
                            countPostion: CountPostion.bottom,
                          ),
                          Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Icon(
                                  Icons.comment,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("95",
                                    style: TextStyle(color: Colors.grey)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //textfield post
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(12)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent.shade700),
                                  borderRadius: BorderRadius.circular(12)),
                              hintText: 'Write something on the wall..',
                              hintStyle: GoogleFonts.bebasNeue(),
                              fillColor: Colors.grey[200],
                              filled: true),
                        ),
                      ),
                      IconButton(
                          hoverColor: Colors.white,
                          highlightColor: Colors.white,
                          splashColor: Colors.redAccent.shade700,
                          focusColor: Colors.redAccent.shade700,
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_circle_up,
                            color: Colors.redAccent.shade700,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70.0),
                  child: Text(
                    "Logged in as: user1@gmail.com",
                    style: GoogleFonts.bebasNeue(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
