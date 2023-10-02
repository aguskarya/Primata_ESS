// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:primata_ess/model/view_TransJadwalShiftWeb.dart';
import 'package:primata_ess/services/viewTransJadwalShiftWeb_Attendance.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  late List<ViewTransJadwalShiftWeb> trAttendance;

  final formatTgl = DateFormat('dd/MM/yyyy');
  final formatTime = DateFormat('hh:mm:ss');
  final formatHari = DateFormat('EEEE');

  //scrollbar
  final ScrollController verticalScroll = ScrollController();
  final ScrollController horizontalScroll = ScrollController();
  final double width = 20;

  @override
  void initState() {
    getlistAttendance().then((value) {
      trAttendance = value.toList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance"),
        backgroundColor: Colors.teal[300],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            child: Container(
              width: double.infinity,
              height: 450.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 15.0,
                    )
                  ]),
              child: Scrollbar(
                controller: horizontalScroll,
                isAlwaysShown: true,
                child: SingleChildScrollView(
                  controller: horizontalScroll,
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    controller: verticalScroll,
                    child: FutureBuilder<List<ViewTransJadwalShiftWeb>>(
                        future: getlistAttendance(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return DataTable(
                              dataRowHeight: 60,
                              columns: const [
                                DataColumn(
                                  label: Text('DATE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('SHIFT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('IN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('OUT',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('TOTAL',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                              ],
                              rows: List.generate(trAttendance.length, (index) {
                                return DataRow(cells: <DataCell>[
                                  DataCell(Column(
                                    children: <Widget>[
                                      const Spacer(flex: 1),
                                      Text(formatTgl.format(DateTime?.parse(
                                          "${snapshot.data![index].tanggal}"))),
                                      const Spacer(flex: 1),
                                      Text(formatHari.format(DateTime?.parse(
                                          "${snapshot.data![index].tanggal}"))),
                                      const Spacer(flex: 1),
                                    ],
                                  )),
                                  DataCell(
                                    Text("${snapshot.data![index].noShift}"),
                                  ),
                                  DataCell(
                                    Text(formatTime.format(DateTime.parse(
                                        "${snapshot.data![index].masuk}"))),
                                  ),
                                  DataCell(
                                    Text(formatTime.format(DateTime.parse(
                                        "${snapshot.data![index].pulang}"))),
                                  ),
                                  DataCell(
                                    Text(formatTime.format(DateTime.parse(
                                        "${snapshot.data![index].jmlJamKerja}"))),
                                  ),
                                ]);
                              }),
                            );
                          } else if (snapshot.hasError) {
                            return Text(snapshot.error.toString());
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        }),
                  ),

                  // child: dataTableSchedule,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
