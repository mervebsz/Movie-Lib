// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter_application_1/page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),

      //geri dönme butonu
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white, // İkon rengini belirleyebilirsiniz
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        automaticallyImplyLeading: true, // Geri dönme ikonunu otomatik ekle
        backgroundColor: Colors.transparent, // App bar arkaplan rengi
        elevation: 0, // App bar gölge efekti
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25),
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            SizedBox(height: 15),
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            SizedBox(height: 15),
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: false,
            ),
            SizedBox(height: 30),

            //register button
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 200),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 66, 5, 5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                onPressed: () {
                  // Burada kayıt işlemleri yapılabilir
                },
                style: TextButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 66, 5, 5), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: MaterialButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
