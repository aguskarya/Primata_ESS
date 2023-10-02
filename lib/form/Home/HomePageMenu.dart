// ignore_for_file: unused_field, prefer_const_constructors, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:primata_ess/form/Attendance/AttendancePage.dart';
import 'package:primata_ess/form/Leave/LeavePage.dart';
import 'package:primata_ess/form/Profile/Profile.dart';
import 'package:primata_ess/form/ShiftSchedule/shiftSchedule.dart';
import 'package:primata_ess/model/MasterEmployee/master_Employee.dart';
import 'package:primata_ess/model/menu_user.dart';
import 'package:primata_ess/model/view_MasterEmployee.dart';
import 'package:primata_ess/services/menu_user_service.dart';
import 'package:primata_ess/services/viewMasterEmpl_service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePageMenu extends StatefulWidget {
  const HomePageMenu({Key? key}) : super(key: key);

  @override
  _HomePageMenuState createState() => _HomePageMenuState();
}

class _HomePageMenuState extends State<HomePageMenu>
    with SingleTickerProviderStateMixin {
  late Future<ViewMasterEmployeeList> userdata;

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
    userdata = getEmployeeList();
    super.initState();
  }

  //event logout user untuk di panggil ke ListTitle logout.
  void _SignOut() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 250.0,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ClipOval(
              child: SizedBox(
                width: 90.0,
                height: 90.0,
                child: Image.asset(
                  "assets/images/avatar.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Sign Out?",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.check),
                      Padding(padding: const EdgeInsets.all(5.0)),
                      Text("Yes")
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.close),
                      Padding(padding: const EdgeInsets.all(5.0)),
                      Text("Cancel")
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ViewMasterEmployeeList>(
        future: userdata,
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.error != null) {
            return Text("${snapshot.error}");
          } else {
            return Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      snapshot.data!.employeeName,
                      style: TextStyle(color: Colors.black),
                    ),
                    // accountName: Text(
                    //   "${snapshot.data!.userName}",
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    // accountEmail: Text(
                    //   snapshot.data!.personalEmail,
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    // accountEmail: Text(
                    //   '${snapshot.data!.emailAddress}',
                    //   style: TextStyle(color: Colors.black),
                    // ),
                    currentAccountPicture: CircleAvatar(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/avatar5.png",
                          fit: BoxFit.cover,
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage("assets/images/BgDrawer.jpg"),
                        //   fit: BoxFit.cover,
                        // ),
                        ),
                    accountEmail: null,
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("My Account"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ProfilePage(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.event_note),
                    title: Text("My ShiftSchedule"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ShiftSchedule(),
                          ));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text("My Attendance"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Attendance(),
                        ),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.content_paste),
                    title: Text("My Leave"),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Leave(),
                          ));
                    },
                  ),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.4),
                    indent: 32,
                    endIndent: 32,
                  ),
                  ListTile(
                    leading: Icon(Icons.map_outlined),
                    title: Text("My Location"),
                    onTap: () {
                      sweatAlert(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Logout"),
                    onTap: () {
                      sweatAlert(context);
                    },
                  ),
                ],
              ),
            );
          }
        }));
  }
}
