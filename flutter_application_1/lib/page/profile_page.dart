// ignore_for_file: unused_import, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter_application_1/page/movies_page.dart';
import 'package:flutter_application_1/page/discover_page.dart';
import 'package:flutter_application_1/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/mysaveds.dart';
import 'package:flutter_application_1/components/myfavs.dart';
import 'package:flutter_application_1/data/moviedata.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<MovieData> saved = [
    MovieData(
        "https://tr.web.img4.acsta.net/c_310_420/pictures/14/10/09/15/52/150664.jpg",
        "Interstellar",
        "Christopher Nolan",
        169,
        8.7,
        "movieDescription"),
    MovieData(
        "https://tr.web.img2.acsta.net/c_310_420/pictures/21/10/13/11/52/2707524.jpg",
        "Dune: Çöl Gezegeni",
        "Denis Villeneuve",
        155,
        8.0,
        "movieDescription"),
    MovieData(
        "https://tr.web.img4.acsta.net/c_310_420/pictures/bzp/01/57060.jpg",
        "The Curious Case of Benjamin Button",
        "David Fincher",
        166,
        7.8,
        "movieDescription"),
    MovieData(
        "https://tr.web.img3.acsta.net/c_310_420/pictures/20/05/21/15/22/3266251.png",
        "The Old Guard",
        "Gina Prince-Bythewood",
        125,
        6.7,
        "movieDescription"),
  ];

  List<MovieData> fav = [
    MovieData("https://m.media-amazon.com/images/I/713QrA632AL._SY522_.jpg",
        "The Vanishing Hal", "Britt Bennett", 400, 4.4, "movieDescription"),
    MovieData("https://m.media-amazon.com/images/I/718W0JbHm1L._SL1500_.jpg",
        "Normal People", "Sally Rooney", 304, 4.1, "movieDescription"),
    MovieData(
        "https://m.media-amazon.com/images/I/61k7JqSWOUL._SY522_.jpg",
        "The Ballad of Songbirds and Snakes",
        "Suzanne Collins",
        528,
        4.6,
        "movieDescription"),
    MovieData(
        "https://m.media-amazon.com/images/I/81msb6gUBTL._SY522_.jpg",
        "The Song of Achilles",
        "Madeline Miller",
        416,
        4.6,
        "movieDescription"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 27, 27),
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            //geri dönme butonu
            Icons.arrow_back_ios,
            color: Colors.white, //Color.fromARGB(255, 4, 157, 184),
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white, //Color.fromARGB(255, 4, 157, 184),
              size: 24,
            ),
            onPressed: () {
              // Ayarlar sayfasına gitme işlemleri buraya eklenir
            },
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // Burada profil bilgileri veya başka öğeler olabilir
            // SliverAppBar veya SliverPersistentHeader gibi
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20), // Üstten boşluk
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("profil beyaz.png"),
                  ),
                ),
                //Padding(
                //padding: const EdgeInsets.only(left: 20, top: 0),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "UserName",
                        style: TextStyle(
                          color: Color.fromARGB(255, 114, 4, 4),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 1.5, // Çizgi kalınlığı
                        width: double.infinity, // Çizgi genişliği
                        color: Color.fromARGB(255, 28, 27, 27),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),

                Container(
                  margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "📃 Saved List",
                        style: TextStyle(
                          color: Color.fromARGB(255, 114, 4, 4),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12), // Altından boşluk

                //liste görünümü oluşturma
                //kaydedilenler için
                Container(
                  width: double.infinity,
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      mySaved(saved[0]),
                      mySaved(saved[1]),
                      mySaved(saved[2]),
                      mySaved(saved[3]),
                    ],
                  ),
                ),

                SizedBox(height: 16), // Altından boşluk

                Container(
                  margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "🤍 Favourites",
                        style: TextStyle(
                          color: Color.fromARGB(255, 114, 4, 4),
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),

                //favoriler için
                Container(
                  width: double.infinity,
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      //myFavs(fav[0]),
                      //myFavs(fav[1]),
                      //myFavs(fav[2]),
                      //myFavs(fav[3]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //navigation bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        //seçili sayfanın rengi
        selectedItemColor: Color.fromARGB(255, 167, 70, 70),
        unselectedItemColor: Color.fromARGB(255, 114, 4, 4),

        //seçili sayfanın fontu
        selectedLabelStyle: TextStyle(
          fontSize: 14.0, // Seçili olan label font büyüklüğü
          fontWeight: FontWeight.bold, // Seçili olan label font kalınlığı
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14.0, // Seçili olmayan label font büyüklüğü
          fontWeight: FontWeight.normal, // Seçili olmayan label font kalınlığı
        ),

        //seçili sayfanın indeksi
        currentIndex: 2,

        //seçili sayfaya gitmek için
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoviesPage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiscoverPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
          }
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
            ),
            label: "Movies",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
