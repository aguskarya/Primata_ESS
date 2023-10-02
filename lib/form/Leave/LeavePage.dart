// ignore_for_file: prefer_const_constructors

import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:primata_ess/form/Leave/RequestCuti/new_request.dart';

import 'package:primata_ess/model/Leave/model_ViewLeaveSummaryAll.dart';
import 'package:primata_ess/services/Leave/service_ViewLeaveSummaryAll.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Leave extends StatefulWidget {
  const Leave({Key? key}) : super(key: key);

  @override
  _LeaveState createState() => _LeaveState();
}

class _LeaveState extends State<Leave> with SingleTickerProviderStateMixin {
  late final String initialLeave;
  late final List<View4LeaveSummaryAll> leaveList;
  late final String pinId;

//scrollbar
  final ScrollController verticalScroll = ScrollController();
  final ScrollController horizontalScroll = ScrollController();
  final double width = 20;

  @override
  void initState() {
    listLeaveSummary().then((value) {
      leaveList = value.toList();
    });
    super.initState();
  }

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leave Page"),
        backgroundColor: Colors.teal[300],
      ),
      floatingActionButton: FloatingActionButton(
        // child: Icon(add),
        child: Icon(Icons.add),
        backgroundColor: Colors.teal[300],
        onPressed: () {
          sweatAlert(context);
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => NewRequest()));
        },
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          const Padding(padding: EdgeInsets.only(top: 5.0)),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
            child: Container(
              width: double.infinity,
              height: 470.0,
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
                    child: FutureBuilder<List<View4LeaveSummaryAll>>(
                        future: listLeaveSummary(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return DataTable(
                              columns: const [
                                DataColumn(
                                  label: Text('Leave Type',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('Entitlement Last Year',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('Taken Last Year',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('Balance Last Year',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('Entitlement ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('Taken',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                                DataColumn(
                                  label: Text('Remaining',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          color: Colors.blue)),
                                  numeric: false,
                                ),
                              ],
                              rows: List.generate(leaveList.length, (index) {
                                return DataRow(
                                    // onSelectChanged: (value) {
                                    //   if(value){

                                    //   }
                                    //   // Navigator.push(context,
                                    //   //     MaterialPageRoute(builder: (context) => anual.ALLeave(

                                    //   //     )));
                                    // },
                                    cells: <DataCell>[
                                      DataCell(
                                        Text(
                                            snapshot.data![index].initialLeave),
                                      ),
                                      DataCell(
                                        Text(
                                            "${snapshot.data?[index].lyentitlement}"),
                                      ),
                                      DataCell(
                                        Text(snapshot.data![index].lytaken
                                            .toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data![index].balance
                                            .toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data![index].tyentitlement
                                            .toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data![index].tytaken
                                            .toString()),
                                      ),
                                      DataCell(
                                        Text(snapshot.data![index].remaining
                                            .toString()),
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
          ),
        ],
      ),
    );
  }
}
