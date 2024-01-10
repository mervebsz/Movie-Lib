// ignore_for_file: prefer_const_constructors

import 'package:flutter_application_1/page/profile_page.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({Key? key, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 130),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 66, 5, 5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: MaterialButton(
        onPressed: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfilePage()));
        }),
        child: Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
