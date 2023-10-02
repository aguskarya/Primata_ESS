// To parse this JSON data, do
//
//     final transLeaves = transLeavesFromJson(jsonString);

import 'dart:convert';

List<TransLeaves> transLeavesFromJson(String str) => List<TransLeaves>.from(
    json.decode(str).map((x) => TransLeaves.fromJson(x)));

String transLeavesToJson(List<TransLeaves> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TransLeaves {
  TransLeaves({
    required this.autoNo,
    required this.startDate,
    required this.endDate,
    required this.pinId,
    required this.leaveNo,
    required this.status,
    required this.keterangan,
    required this.leave,
    required this.entitlement,
    required this.taken,
    required this.remaining,
    required this.forfeited,
    required this.tglLastUpdate,
    required this.optr,
    required this.reff,
    required this.reffNo,
    required this.takenDate,
    required this.unTaken,
    required this.jabatan,
    required this.departemen,
    required this.dateJoin,
    required this.firstName,
    required this.cuti,
    required this.kodeDepartemen,
    required this.kodeStatusKaryawan,
    required this.namaKaryawan,
    required this.entitlementStatus,
    required this.initialLeave,
  });

  int autoNo;
  DateTime startDate;
  DateTime endDate;
  String pinId;
  int leaveNo;
  bool status;
  String keterangan;
  String leave;
  int entitlement;
  int taken;
  int remaining;
  int forfeited;
  DateTime tglLastUpdate;
  String optr;
  String reff;
  int reffNo;
  DateTime takenDate;
  int unTaken;
  String jabatan;
  String departemen;
  DateTime dateJoin;
  String firstName;
  bool cuti;
  String kodeDepartemen;
  String kodeStatusKaryawan;
  String namaKaryawan;
  bool entitlementStatus;
  String initialLeave;

  factory TransLeaves.fromJson(Map<String, dynamic> json) => TransLeaves(
        autoNo: json["autoNo"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
        pinId: json["pinId"],
        leaveNo: json["leaveNo"],
        status: json["status"],
        keterangan: json["keterangan"],
        leave: json["leave"],
        entitlement: json["entitlement"],
        taken: json["taken"],
        remaining: json["remaining"],
        forfeited: json["forfeited"],
        tglLastUpdate: DateTime.parse(json["tglLastUpdate"]),
        optr: json["optr"],
        reff: json["reff"],
        reffNo: json["reffNo"],
        takenDate: DateTime.parse(json["takenDate"]),
        unTaken: json["unTaken"],
        jabatan: json["jabatan"],
        departemen: json["departemen"],
        dateJoin: DateTime.parse(json["dateJoin"]),
        firstName: json["firstName"],
        cuti: json["cuti"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeStatusKaryawan: json["kodeStatusKaryawan"],
        namaKaryawan: json["namaKaryawan"],
        entitlementStatus: json["entitlementStatus"],
        initialLeave: json["initialLeave"],
      );

  Map<String, dynamic> toJson() => {
        "autoNo": autoNo,
        "startDate": startDate.toIso8601String(),
        "endDate": endDate.toIso8601String(),
        "pinId": pinId,
        "leaveNo": leaveNo,
        "status": status,
        "keterangan": keterangan,
        "leave": leave,
        "entitlement": entitlement,
        "taken": taken,
        "remaining": remaining,
        "forfeited": forfeited,
        "tglLastUpdate": tglLastUpdate.toIso8601String(),
        "optr": optr,
        "reff": reff,
        "reffNo": reffNo,
        "takenDate": takenDate.toIso8601String(),
        "unTaken": unTaken,
        "jabatan": jabatan,
        "departemen": departemen,
        "dateJoin": dateJoin.toIso8601String(),
        "firstName": firstName,
        "cuti": cuti,
        "kodeDepartemen": kodeDepartemen,
        "kodeStatusKaryawan": kodeStatusKaryawan,
        "namaKaryawan": namaKaryawan,
        "entitlementStatus": entitlementStatus,
        "initialLeave": initialLeave,
      };
}
