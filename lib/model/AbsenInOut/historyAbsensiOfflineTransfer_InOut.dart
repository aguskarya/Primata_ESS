// To parse this JSON data, do
//
//     final historyAbsensiOfflineTransfer = historyAbsensiOfflineTransferFromJson(jsonString);

import 'dart:convert';

List<HistoryAbsensiOfflineTransfer> historyAbsensiOfflineTransferFromJson(
        String str) =>
    List<HistoryAbsensiOfflineTransfer>.from(
        json.decode(str).map((x) => HistoryAbsensiOfflineTransfer.fromJson(x)));

String historyAbsensiOfflineTransferToJson(
        List<HistoryAbsensiOfflineTransfer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryAbsensiOfflineTransfer {
  HistoryAbsensiOfflineTransfer({
    required this.autoNo,
    required this.terminalId,
    required this.pinid,
    required this.tanggal,
    required this.verifyResult,
    required this.functionKey,
    required this.recover,
    required this.sumber,
    required this.bundleNo,
    required this.mesinId,
    required this.latitude,
    required this.longitude,
  });

  int autoNo;
  int terminalId;
  String pinid;
  DateTime tanggal;
  int verifyResult;
  int functionKey;
  bool recover;
  String sumber;
  int bundleNo;
  String mesinId;
  final double? latitude;
  final double? longitude;

  factory HistoryAbsensiOfflineTransfer.fromJson(Map<String, dynamic> json) =>
      HistoryAbsensiOfflineTransfer(
        autoNo: json["autoNo"],
        terminalId: json["terminalId"],
        pinid: json["pinid"],
        tanggal: DateTime.parse(json["tanggal"]),
        verifyResult: json["verifyResult"],
        functionKey: json["functionKey"],
        recover: json["recover"],
        sumber: json["sumber"],
        bundleNo: json["bundleNo"],
        mesinId: json["mesinId"],
        latitude: json["latitude"],
        longitude: json["longitude"],
      );

  Map<String, dynamic> toJson() => {
        "autoNo": autoNo,
        "terminalId": terminalId,
        "pinid": pinid,
        "tanggal": tanggal.toIso8601String(),
        "verifyResult": verifyResult,
        "functionKey": functionKey,
        "recover": recover,
        "sumber": sumber,
        "bundleNo": bundleNo,
        "mesinId": mesinId,
        "latitude": latitude,
        "longitude": longitude,
      };
}
