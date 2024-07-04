import 'package:behanceui/Widgets/nav_bar.dart';
import 'package:behanceui/Widgets/posts.dart';
import 'package:behanceui/Widgets/status.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            ClipOval(
                              child: Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 4,
                                  ),
                                ),
                                child: const Icon(Icons.photo_camera),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            const Text(
                              "+ add",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 11),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Status(
                          user: "assets/Users/profile.png",
                          text: "#user1",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Status(
                          user: "assets/Users/user1.jpg",
                          text: "Mark",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Status(
                          user: "assets/Users/user2.jpg",
                          text: "Mick",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Status(
                          user: "assets/Users/user3.jpg",
                          text: "Angella",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Status(
                          user: "assets/Users/user4.jpg",
                          text: "Rohit",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Status(
                          user: "assets/Users/user5.jpg",
                          text: "Prince",
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Posts(post: "assets/All/post1.png", text1: "Portfolio Designs", pic: "assets/Users/user5.jpg", text2: "#user1"),
                  Posts(post: "assets/All/post2.jpg", text1: "Home management", pic: "assets/Users/user4.jpg", text2: "#user2"),
                  Posts(post: "assets/All/post3.jpg", text1: "Graphic Design", pic: "assets/Users/user3.jpg", text2: "#user3"),
                  Posts(post: "assets/All/post4.jpg", text1: "Laptop Customization", pic: "assets/Users/user2.jpg", text2: "#user4"),
                  Posts(post: "assets/All/post5.jpg", text1: "Graphic Design", pic: "assets/Users/user1.jpg", text2: "#user5"),
                  Posts(post: "assets/All/post6.jpg", text1: "Portfolio Designs", pic: "assets/Users/user5.jpg", text2: "#user6"),
                  Posts(post: "assets/All/post8.jpg", text1: "Nature Graphics", pic: "assets/Users/user4.jpg", text2: "#user7"),
                  Posts(post: "assets/All/post9.jpg", text1: "Nature", pic: "assets/Users/user3.jpg", text2: "#user8"),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 10.0, left: 50, right: 50),
                child: BlurryContainer(
                  blur: 5,
                  width: 5,
                  height: 60,
                  elevation: 0,
                  color: Colors.transparent,
                 
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 98, 179),),
                            child: const Center(
                                child: Text(
                              "For You",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ))),
                      ),
                      const Text(
                        "Following",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
