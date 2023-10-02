// To parse this JSON data, do
//
//     final GetHistoryAbsensiOfflineTransfer = GetHistoryAbsensiOfflineTransferFromJson(jsonString);

import 'dart:convert';

List<GetHistoryAbsensiOfflineTransfer> GetHistoryAbsensiOfflineTransferFromJson(
        String str) =>
    List<GetHistoryAbsensiOfflineTransfer>.from(json
        .decode(str)
        .map((x) => GetHistoryAbsensiOfflineTransfer.fromJson(x)));

String GetHistoryAbsensiOfflineTransferToJson(
        List<GetHistoryAbsensiOfflineTransfer> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetHistoryAbsensiOfflineTransfer {
  GetHistoryAbsensiOfflineTransfer({
    required this.no,
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

  final int no;
  final int autoNo;
  final int terminalId;
  final String pinid;
  final DateTime tanggal;
  final int verifyResult;
  final int functionKey;
  final bool recover;
  final String sumber;
  final int bundleNo;
  final String mesinId;
  final double? latitude;
  final double? longitude;

  factory GetHistoryAbsensiOfflineTransfer.fromJson(
          Map<String, dynamic> json) =>
      GetHistoryAbsensiOfflineTransfer(
        no: json["no"],
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
        "no": no,
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
