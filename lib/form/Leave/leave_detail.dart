// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:primata_ess/model/view_TransLeaves.dart';
import 'package:primata_ess/services/Leave/service_TransLeave.dart';

class LeaveDetail extends StatefulWidget {
  const LeaveDetail({Key? key}) : super(key: key);

  @override
  _LeaveDetailState createState() => _LeaveDetailState();
}

class _LeaveDetailState extends State<LeaveDetail> {
  late List<TransLeaves> leaveDetail;

  final formatTgl = DateFormat('dd/MM/yyyy');
  final formatHari = DateFormat('EEEE');

  @override
  void initState() {
    getLeaveDetail().then((value) {
      leaveDetail = value.toList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const Padding(padding: EdgeInsets.all(10.0)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            child: Container(
              width: double.infinity,
              height: 370.0,
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
              child: Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: FutureBuilder<List<TransLeaves>>(
                      future: getLeaveDetail(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return DataTable(
                            // ignore: prefer_const_literals_to_create_immutables
                            columns: [
                              const DataColumn(
                                label: Text('START DATE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              const DataColumn(
                                label: Text('REFF',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              const DataColumn(
                                label: Text('DESCRIPTION',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              const DataColumn(
                                label: Text('ENTITLEMENT',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              const DataColumn(
                                label: Text('TAKEN',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              const DataColumn(
                                label: Text('FORFEITED',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              const DataColumn(
                                label: Text('REMAINING',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                            ],
                            rows: List.generate(leaveDetail.length, (index) {
                              return DataRow(cells: <DataCell>[
                                DataCell(
                                  Text(formatTgl.format(DateTime?.parse(
                                      "${snapshot.data?[index].startDate}"))),
                                ),
                                DataCell(
                                  Text("${snapshot.data?[index].reff}"),
                                ),
                                DataCell(
                                  Text("${snapshot.data?[index].keterangan}"),
                                ),
                                DataCell(
                                  Text("${snapshot.data?[index].entitlement}"),
                                ),
                                DataCell(
                                  Text("${snapshot.data?[index].taken}"),
                                ),
                                DataCell(
                                  Text("${snapshot.data?[index].forfeited}"),
                                ),
                                DataCell(
                                  Text("${snapshot.data?[index].remaining}"),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
