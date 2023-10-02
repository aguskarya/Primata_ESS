// ignore_for_file: deprecated_member_use, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:primata_ess/form/Home/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final txtUser = TextEditingController();
  final txtPass = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    txtUser.dispose();
    txtPass.dispose();
    super.dispose();
  }

  // Future<Future> _signIn() async {
  //   if ((txtUser.text == "sk") && (txtPass.text == "111")) {
  //     return Navigator.of(context).push(
  //       MaterialPageRoute(
  //           builder: (BuildContext context) => new HomePage(
  //                 user: txtUser.text,
  //                 pass: txtPass.text,
  //               )),
  //     );
  //   } else {
  //     return showDialog(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(content: Text("login gagal."));
  //         });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            // ignore: unnecessary_new
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Image.asset(
                  'assets/images/PrimataEss.png',
                  fit: BoxFit.fill,
                )
              ],
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.teal[300],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: txtUser,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                prefixIcon: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black87,
                ),
                hintText: "Masukkan Username",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Username",
                labelStyle: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: txtPass,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 40,
                  color: Colors.black87,
                ),
                hintText: "Masukkan Password",
                hintStyle: TextStyle(color: Colors.black87),
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              color: Colors.teal,
              elevation: 5,
              child: Container(
                height: 50,
                child: InkWell(
                  splashColor: Colors.white,
                  // onTap: _signIn,
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
