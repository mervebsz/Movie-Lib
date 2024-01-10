// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/moviedata.dart';

Widget mySaved(MovieData saved) {
  return Container(
    width: 160.0,
    margin: EdgeInsets.only(right: 12.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 101.375,
          height: 150.375,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
                image: NetworkImage(saved.movieCover), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 5,
        ),

        //kitap ismi
        Text(saved.movieName,
            style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 108, 116, 103),
            )),
      ],
    ),
  );
}
