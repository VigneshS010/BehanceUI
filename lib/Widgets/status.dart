import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Status extends StatelessWidget {
  String user;
  String text;
   Status({super.key,required this.user, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Container(
            height: 65,
            width: 65,
            decoration: const BoxDecoration(color: Color.fromARGB(255, 34, 0, 255)),
            child: Padding(
              padding: const EdgeInsets.all(1.3),
              child: ClipOval(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration:  BoxDecoration(color: Colors.white,
                   border: Border.all(color: Colors.black, width: 4),),
                  child: FittedBox(
                    fit: BoxFit.cover,
                      child: Image.asset(
                    user,fit: BoxFit.fill,
                  )),
                ),
              ),
            ),
          ),
        ),
         const SizedBox(height: 3,),
                      Text(text,style: const TextStyle(color: Colors.white70,fontSize: 11),)
      ],
    );
  }
}
