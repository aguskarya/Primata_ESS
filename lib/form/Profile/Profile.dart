// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:primata_ess/form/Home/HomePage.dart';
import 'package:primata_ess/model/view_MasterEmployee.dart';
import 'package:primata_ess/model/view_MasterEmployee_prof.dart';
import 'package:primata_ess/services/routes/PageRoutes.dart';
import 'package:intl/intl.dart';
import 'package:primata_ess/services/viewMasterEmplProfile_service.dart';
import 'package:primata_ess/services/viewMasterEmpl_service.dart';
import 'dart:async';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late Future<ViewMasterEmployeeProfile> employeeProf;

  var dataKaryawan1;
  var dataKaryawan2;
  var dataKaryawan3;
  var dataKaryawan4;
  var dataKaryawan5;

  final formatTgl = DateFormat('dd/MM/yyyy');

  @override
  void initState() {
    employeeProf = getEmployeeProfile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.teal[300],
        leading: IconButton(
            onPressed: () {
              // ignore: unnecessary_new
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
            )),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<ViewMasterEmployeeProfile>(
            future: employeeProf,
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[],
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
                                          .push(MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            ProfilePage(),
                                      ));
                                    },
                                    child: Image.asset(
                                      "assets/images/avatar5.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  width: 150.0,
                                  height: 150.0,
                                )),
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
                                snapshot.data!.employeeName.toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                snapshot.data!.emplId.toString(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, right: 5.0, left: 5.0),
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 310,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0.0, 3.0),
                                blurRadius: 15.0,
                              ),
                            ]),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.home),
                                    title: Text(
                                      "Devision :",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      snapshot.data!.division.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_today),
                                    title: Text(
                                      "Department :",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      snapshot.data!.department.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_today),
                                    title: Text(
                                      "Position :",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      snapshot.data!.position.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.location_city),
                                    title: Text(
                                      "Work Unit :",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      snapshot.data!.unitKerja.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.0, right: 5.0, left: 5.0),
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        height: 310,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0.0, 3.0),
                                blurRadius: 15.0,
                              ),
                            ]),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text(
                                      "Category :",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      snapshot.data!.category.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text(
                                      "Level / Grade:",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      snapshot.data!.levelId.toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text(
                                      "Place Of Birth:",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    // subtitle: Text(
                                    //   formatTgl.format(DateTime.parse(
                                    //       snapshot.data!.placeOfBirth)),
                                    //   style: TextStyle(
                                    //       fontSize: 15,
                                    //       color: Colors.black,
                                    //       fontWeight: FontWeight.bold),
                                    // ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text(
                                      "Date Of Birth:",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      formatTgl
                                          .format(DateTime.parse(
                                              snapshot.data!.dateOfBirth))
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: ListTile(
                                    leading: Icon(Icons.calendar_month),
                                    title: Text(
                                      "Date Retire:",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    subtitle: Text(
                                      formatTgl
                                          .format(DateTime.parse(
                                              snapshot.data!.dateRetire))
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return CircularProgressIndicator();
              }
            })),
      ),
    );
  }
}
