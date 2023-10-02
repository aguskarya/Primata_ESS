// To parse required this JSON data, do
//
//     final viewTransJadwalShiftWeb = viewTransJadwalShiftWebFromJson(jsonString);

import 'dart:convert';

ViewTransJadwalShiftWeb viewTransJadwalShiftWebFromJson(String str) =>
    ViewTransJadwalShiftWeb.fromJson(json.decode(str));

String viewTransJadwalShiftWebToJson(ViewTransJadwalShiftWeb data) =>
    json.encode(data.toJson());

class ViewTransJadwalShiftWeb {
  ViewTransJadwalShiftWeb({
    required this.noMesin,
    required this.namaKaryawan,
    required this.jabatan,
    required this.kodeDepartemen,
    required this.kodeBagian,
    required this.kodeKaryawan,
    required this.tanggal,
    required this.noShift,
    required this.masuk,
    required this.pulang,
    required this.jmlJamKerja,
  });

  String? noMesin;
  String? namaKaryawan;
  String? jabatan;
  String? kodeDepartemen;
  String? kodeBagian;
  String? kodeKaryawan;
  DateTime? tanggal;
  String? noShift;
  DateTime? masuk;
  DateTime? pulang;
  DateTime? jmlJamKerja;

  factory ViewTransJadwalShiftWeb.fromJson(Map<String, dynamic> json) =>
      ViewTransJadwalShiftWeb(
        noMesin: json["noMesin"],
        namaKaryawan: json["namaKaryawan"],
        jabatan: json["jabatan"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeBagian: json["kodeBagian"],
        kodeKaryawan: json["kodeKaryawan"],
        tanggal: DateTime.parse(json["tanggal"]),
        noShift: json["noShift"],
        masuk: DateTime?.parse(json["masuk"]),
        pulang: DateTime?.parse(json["pulang"]),
        jmlJamKerja: DateTime?.parse(json["jmlJamKerja"]),
      );

  Map<String, dynamic> toJson() => {
        "noMesin": noMesin,
        "namaKaryawan": namaKaryawan,
        "jabatan": jabatan,
        "kodeDepartemen": kodeDepartemen,
        "kodeBagian": kodeBagian,
        "kodeKaryawan": kodeKaryawan,
        "tanggal": tanggal?.toIso8601String(),
        "noShift": noShift,
        "masuk": masuk?.toIso8601String(),
        "pulang": pulang?.toIso8601String(),
        "jmlJamKerja": jmlJamKerja?.toIso8601String(),
      };
}
