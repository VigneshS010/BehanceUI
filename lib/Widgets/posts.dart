import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Posts extends StatelessWidget {
  String post;
  String text1;
  String text2;
  String pic;
   Posts({super.key , required this.post , required this.text1 , required this.pic, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.topCenter,
        height: 280,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 42, 42, 42),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              post,
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text1,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Row(
                children: [
                  ClipOval(
                      child: Image.asset(
                    pic,
                    height: 25,
                    width: 25,
                    fit: BoxFit.fill,
                  )),
                  const SizedBox(width: 5,),
                  Text(
                    text2,
                    style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
