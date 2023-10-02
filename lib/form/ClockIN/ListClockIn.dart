import 'package:flutter/material.dart';
import 'package:primata_ess/model/AbsenInOut/getHistoryAbsensiOfflineTransfer_inOut.dart';
import 'package:primata_ess/services/AbsenIn/AbsenIn.dart';

class ListClockIn extends StatefulWidget {
  const ListClockIn({Key? key}) : super(key: key);

  @override
  State<ListClockIn> createState() => _ListClockInState();
}

class _ListClockInState extends State<ListClockIn> {
  late List<GetHistoryAbsensiOfflineTransfer> listClockIn;

  @override
  void initState() {
    getHistoryAbsensiIn().then((value) {
      listClockIn = value.toList();
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
                  child: FutureBuilder<List<GetHistoryAbsensiOfflineTransfer>>(
                    future: getHistoryAbsensiIn(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return DataTable(
                            columns: const [
                              DataColumn(
                                label: Text('Tanggal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              DataColumn(
                                label: Text('Latitude',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                              DataColumn(
                                label: Text('Longitude',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue)),
                                numeric: false,
                              ),
                            ],
                            rows: List.generate(listClockIn.length, (index) {
                              return DataRow(cells: <DataCell>[
                                DataCell(Column(
                                  children: <Widget>[
                                    const Spacer(flex: 1),
                                    Text("${snapshot.data![index].tanggal}"),
                                    const Spacer(flex: 1),
                                    Text("${snapshot.data![index].latitude}"),
                                    const Spacer(flex: 1),
                                    Text("${snapshot.data![index].longitude}"),
                                    const Spacer(flex: 1),
                                  ],
                                )),
                              ]);
                            }));
                      } else if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
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
