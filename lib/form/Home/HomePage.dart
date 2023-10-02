// ignore_for_file: prefer_const_constructors, deprecated_member_use, unnecessary_new

import 'package:flutter/material.dart';
import 'package:primata_ess/form/Attendance/AttendancePage.dart';
import 'package:primata_ess/form/ClockIN/AddClockIn.dart';
import 'package:primata_ess/form/ClockOut/AddClockOut.dart';
import 'package:primata_ess/form/Home/HomePageMenu.dart';
import 'package:primata_ess/form/Leave/LeavePage.dart';
import 'package:primata_ess/form/Profile/Profile.dart';
import 'package:primata_ess/form/ShiftSchedule/shiftSchedule.dart';
import 'package:primata_ess/model/view_MasterEmployee.dart';
import 'package:primata_ess/services/routes/PageRoutes.dart';
import 'package:http/http.dart' as http;
import 'package:local_auth/local_auth.dart';
import 'dart:async';

import 'package:primata_ess/services/viewMasterEmpl_service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);
  // HomePage({this.user, this.pass});
  // final String user;
  // final String pass;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<ViewMasterEmployeeList> employee;

  void sweatAlert(BuildContext context) {
    Alert(
        context: context,
        type: AlertType.warning,
        title: "Not available for demo version",
        buttons: [
          DialogButton(
              child: Text(
                "Close",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              onPressed: () => Navigator.pop(context))
        ]).show();
    return;
  }

  @override
  void initState() {
    employee = getEmployeeList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomePageMenu(),
      appBar: AppBar(
        title: new Text("Primata ESS"),
        backgroundColor: Colors.teal[300],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: FutureBuilder<ViewMasterEmployeeList>(
            future: employee,
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          // Icon(Icons.menu, color: Colors.black, size: 48.0,),
                          // Image.asset("assets/images/image.png", width: 48.0,)
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 42.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.teal[300],
                                child: ClipOval(
                                  child: SizedBox(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                        Navigator.of(context)
                                            .push(new MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              new ProfilePage(),
                                        ));
                                      },
                                      child: Image.asset(
                                        "assets/images/avatar.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    width: 150.0,
                                    height: 150.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              SizedBox(),
                              Text(
                                // snapshot.data!.employeeName,
                                snapshot.data!.employeeName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                snapshot.data!.emplId,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.0),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                snapshot.data!.position,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Center(
                        child: Wrap(
                          spacing: 20.0,
                          runSpacing: 20.0,
                          children: <Widget>[
                            SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddClockIn(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        new Image.asset(
                                            'assets/images/AbsenIn.png',
                                            width: 50.0),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Clock In",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AddClockOut(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                            'assets/images/AbsenOut.png',
                                            width: 50.0),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Clock Out",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ShiftSchedule(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('assets/images/todo.png',
                                            width: 54.0),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "My Schedule",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Attendance(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                            'assets/images/calendar.png',
                                            width: 54.0),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "My Attendance",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Leave(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset('assets/images/Leave.png',
                                            width: 55.0),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          "My Leave",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () async {
                                  sweatAlert(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                            'assets/images/settings.png',
                                            width: 54.0),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Settings",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100.0,
                              height: 100.0,
                              child: GestureDetector(
                                onTap: () {
                                  sweatAlert(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0.0, 3.0),
                                          blurRadius: 15.0,
                                        )
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                            'assets/images/settings.png',
                                            width: 54.0),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Report",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            })),
      ),
    );
  }
}
