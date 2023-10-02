// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:primata_ess/model/AbsenInOut/historyAbsensiOfflineTransfer_InOut.dart';
import 'package:primata_ess/model/AbsenInOut/historyAbsensiOfflineTransfer_InOut.dart';
import 'package:primata_ess/model/user_location.dart';
import 'package:primata_ess/services/AbsenIn/historyAbsensiOfflineTransfer_service.dart';
import 'package:primata_ess/services/location_service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddClockOut extends StatefulWidget {
  const AddClockOut({Key? key}) : super(key: key);

  @override
  _AddClockOutState createState() => _AddClockOutState();
}

class _AddClockOutState extends State<AddClockOut> {
  Future<HistoryAbsensiOfflineTransfer>? _futureHistoryAbsen;
  LocationService locationService = LocationService();

  String now = DateTime.now().toString();

  var _latitudeController = TextEditingController();
  var _longitudeController = TextEditingController();

  String formatTgl = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formatTime = DateFormat('hh:mm').format(DateTime.now());
  String formatHari = DateFormat('EEEE').format(DateTime.now());

  @override
  void initState() {
    // TODO: implement initState
    _latitudeController = TextEditingController();
    _longitudeController = TextEditingController();
    super.initState();

    // _latitudeController.text = locationService.location.getLocation() as String;
  }

  void sweatAlert(BuildContext context) {
    Alert(
        context: context,
        type: AlertType.success,
        title: "Add ClockOut Success",
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
  void dispose() {
    locationService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Clock Out"),
          backgroundColor: Colors.teal[300],
        ),
        body: StreamBuilder<UserLocation>(
          stream: locationService.locationStream,
          builder: (_, snapshot) => (snapshot.hasData)
              ? SingleChildScrollView(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,

                              textInputAction: TextInputAction.done,
                              // autofocus: true,
                              // autocorrect: true,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                enabled: false,
                                // ignore: unnecessary_string_interpolations
                                labelText: "$formatHari",
                                prefixIcon: Icon(Icons.brightness_4),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onTap: () {},
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              enabled: false,
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                // ignore: unnecessary_string_interpolations
                                labelText: "$formatTime",

                                prefixIcon: Icon(Icons.alarm),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {
                                //
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.done,
                              // enabled: _enableTextField,

                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                enabled: false,
                                // ignore: unnecessary_string_interpolations
                                labelText: "$formatTgl",
                                prefixIcon: Icon(Icons.alarm_on),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {
                                //
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              controller: _latitudeController,
                              enabled: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "${snapshot.data?.latitude}",
                                prefixIcon: Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {
                                _latitudeController.text =
                                    "${snapshot.data?.latitude}";
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            TextFormField(
                              controller: _longitudeController,
                              enabled: false,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: "${snapshot.data?.longitude}",
                                prefixIcon: Icon(Icons.map),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              onChanged: (value) {
                                _longitudeController.text =
                                    "${snapshot.data?.longitude}";
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 12.0),
                            ),
                            Card(
                              color: Colors.teal,
                              elevation: 5,
                              child: Container(
                                height: 50,
                                child: InkWell(
                                  splashColor: Colors.white,
                                  // enableFeedback: btnSave,
                                  onTap: () async {
                                    var save = HistoryAbsensiOfflineTransfer(
                                        autoNo: 1,
                                        terminalId: 2,
                                        pinid: "1",
                                        tanggal: DateTime.now(),
                                        verifyResult: 1,
                                        functionKey: 1,
                                        recover: false,
                                        sumber: "HP",
                                        bundleNo: 0,
                                        mesinId: "1",
                                        latitude: double?.parse(
                                            "${snapshot.data?.latitude}"),
                                        longitude: double?.parse(
                                            "${snapshot.data?.longitude}"));

                                    var response = await APIServiceAbsen()
                                        .post("/HistoryAbsensiOfflineTransfers",
                                            save)
                                        .catchError((err) {});
                                    if (response == null) return;
                                    {
                                      sweatAlert(context);
                                    }
                                  },
                                  child: Center(
                                    child: Text(
                                      'Clock Out',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
        ));
  }
}
