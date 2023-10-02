// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:primata_ess/form/Home/HomePage.dart';
import 'package:primata_ess/form/Leave/leave_detail.dart';
import 'package:primata_ess/form/Login/LoginPage.dart';
import 'package:primata_ess/form/Profile/Profile.dart';
import 'package:primata_ess/services/routes/PageRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: _getRoute,
    );
  }
}

Route _getRoute(RouteSettings settings) {
  switch (settings.name) {
    // case PageRoutes.linkLogin:
    //   return MaterialPageRoute(builder: (_) => LoginPage());
    case PageRoutes.linkHome:
      return MaterialPageRoute(builder: (_) => HomePage());
    case PageRoutes.linkProfile:
      return MaterialPageRoute(builder: (_) => ProfilePage());
    case PageRoutes.linkLeaveDetail:
      return MaterialPageRoute(builder: (_) => LeaveDetail());

    // case '/':
    //   return MaterialPageRoute(builder: (_) => LoginPage());
    // case '/Home':
    //   return MaterialPageRoute(builder: (_) => HomePage());
    // case '/Profile':
    //   return MaterialPageRoute(builder: (_) => ProfilePage());
  }
  return MaterialPageRoute(
      builder: (_) => Scaffold(
            body: Center(
              child: Text(
                  'Tidak ada route yang ditentukan untuk ${settings.name}'),
            ),
          ));
}
