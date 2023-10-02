// ignore: file_names
class TransLeaves {
  int autoNo;
  String startDate;
  String endDate;
  String pinId;
  String? keterangan;
  String? leave;
  double? entitlement;
  int? taken;
  double? remaining;
  int? forfeited;
  String? tglLastUpdate;
  String? optr;
  String? reff;
  String? jabatan;
  String? departemen;
  String? dateJoin;
  String? firstName;
  String? kodeDepartemen;
  String? kodeStatusKaryawan;
  String? namaKaryawan;
  String? initialLeave;

  TransLeaves(
      {required this.autoNo,
      required this.startDate,
      required this.endDate,
      required this.pinId,
      required this.keterangan,
      required this.leave,
      required this.entitlement,
      required this.taken,
      required this.remaining,
      required this.forfeited,
      required this.tglLastUpdate,
      required this.optr,
      required this.reff,
      required this.jabatan,
      required this.departemen,
      required this.dateJoin,
      required this.firstName,
      required this.kodeDepartemen,
      required this.kodeStatusKaryawan,
      required this.namaKaryawan,
      required this.initialLeave});

  factory TransLeaves.fromJson(Map<String, dynamic> json) => TransLeaves(
        autoNo: json['autoNo'],
        startDate: json['startDate'],
        endDate: json['endDate'],
        pinId: json['pinId'],
        keterangan: json['keterangan'],
        leave: json['leave'],
        entitlement: json['entitlement'],
        taken: json['taken'],
        remaining: json['remaining'],
        forfeited: json['forfeited'],
        tglLastUpdate: json['tglLastUpdate'],
        optr: json['optr'],
        reff: json['reff'],
        jabatan: json['jabatan'],
        departemen: json['departemen'],
        dateJoin: json['dateJoin'],
        firstName: json['firstName'],
        kodeDepartemen: json['kodeDepartemen'],
        kodeStatusKaryawan: json['kodeStatusKaryawan'],
        namaKaryawan: json['namaKaryawan'],
        initialLeave: json['initialLeave'],
      );
}
