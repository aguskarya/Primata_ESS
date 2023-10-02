// To parse this JSON data, do
//
//     final masterKaryawans = masterKaryawansFromJson(jsonString);

import 'dart:convert';

List<MasterKaryawans> masterKaryawansFromJson(String str) =>
    List<MasterKaryawans>.from(
        json.decode(str).map((x) => MasterKaryawans.fromJson(x)));

String masterKaryawansToJson(List<MasterKaryawans> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MasterKaryawans {
  MasterKaryawans({
    required this.kodeKaryawan,
    required this.pinid,
    required this.noMesin,
    required this.namaKaryawan,
    required this.noKtp,
    required this.firstName,
    required this.lastName,
    required this.unitKerja,
    required this.kodeJabatan,
    required this.divisi,
    required this.kodeDepartemen,
    required this.kodeBagian,
    required this.kodeStatusKaryawan,
    required this.kodeJenisKelamin,
    required this.kodeStatusPerkawinan,
    required this.statusKaryawan,
    required this.pph21,
    required this.tglLahir,
    required this.tempatLahir,
    required this.kodeAgama,
    required this.alamat,
    required this.city,
    required this.teleponRumah,
    required this.teleponRumah2,
    required this.teleponRumah3,
    required this.coOrigin,
    required this.handphone,
    required this.emailAddress,
    required this.dateJoin,
    required this.dueDate,
    required this.confirmed,
    required this.terminated,
    required this.tglBerhenti,
    required this.alasan,
    required this.catatan,
    required this.linkPhoto,
    required this.deptHead,
    required this.deductions,
    required this.jamsostekPremium,
    required this.academic,
    required this.medical,
    required this.spouseName,
    required this.birthDaySpouse,
    required this.emrgcyContactNamePhone2,
    required this.emrgcyContactNamePhone1,
    required this.the90DayConfirmation,
    required this.level,
    required this.levelValue,
    required this.language2,
    required this.extention,
    required this.postalCode,
    required this.region,
    required this.absenStatus,
    required this.absenValidUntil,
    required this.tglLastUpdate,
    required this.optr,
    required this.hirarkiNo,
    required this.jabatanTmp,
    required this.clasMedical,
    required this.noShift,
    required this.noHrd,
    required this.forceFinger,
    required this.memo,
    required this.alamatSekarang,
    required this.kota,
    required this.kodePos2,
    required this.telp2,
    required this.telp1,
    required this.tlp3,
    required this.jmlAnak,
    required this.tahunLulus,
    required this.ukuranSepatu,
    required this.ukuranHem,
    required this.ukuranCelana,
    required this.busJemput,
    required this.pengalamanKerja,
    required this.perusahaanTerakhir,
    required this.golonganDarah,
    required this.nonAcademik,
    required this.firstGrade,
    required this.grade,
    required this.noJpk,
    required this.npwp,
    required this.lastContrac,
    required this.lama,
    required this.mother,
    required this.startContract,
    required this.datejoinNew,
    required this.expDate,
    required this.statusRecruitment,
    required this.nilaiTunjangan,
    required this.jenisTunjangan,
    required this.noKartu,
    required this.noaia,
    required this.jamsostekDate,
    required this.noRecruitment,
    required this.pathJabatan,
    required this.autono,
    required this.idCard,
    required this.skck,
    required this.skckStatus,
    required this.pernyataan,
    required this.kk,
    required this.oldId,
    required this.dateRetire,
    required this.marital,
    required this.kodeMedical,
    required this.jabatan,
    required this.xAgama,
    required this.xDivisi,
    required this.xDepartemen,
    required this.xBagian,
    required this.englishLevel,
    required this.lockerNo,
    required this.reHire,
    required this.recStatus,
    required this.simNo,
    required this.simExpire,
    required this.asalSekolah,
    required this.competencyRef,
    required this.competencyDueDate,
    required this.kkNo,
    required this.bpjsKesehatan,
    required this.skckExpire,
    required this.serikat,
    required this.serikatExpDate,
    required this.lockerDateTaken,
    required this.lockerDateReturn,
    required this.hemQty,
    required this.emrgcyRelation,
    required this.celanaQty,
    required this.sepatuQty,
    required this.ukuranRok,
    required this.rokQty,
    required this.altDept,
    required this.emrgcyContactNamePhone3,
    required this.entitleMeal,
    required this.kitasNo,
    required this.kitasExp,
    required this.passportNo,
    required this.passportExp,
    required this.noShift2,
    required this.noAia1,
    required this.tglAia,
    required this.noBpjskes,
    required this.password,
  });

  final String kodeKaryawan;
  final String pinid;
  final String noMesin;
  final String namaKaryawan;
  final String noKtp;
  final String firstName;
  final String lastName;
  final String unitKerja;
  final String kodeJabatan;
  final String divisi;
  final String kodeDepartemen;
  final String kodeBagian;
  final String kodeStatusKaryawan;
  final String kodeJenisKelamin;
  final String kodeStatusPerkawinan;
  final String statusKaryawan;
  final String pph21;
  final DateTime tglLahir;
  final String tempatLahir;
  final String kodeAgama;
  final String alamat;
  final String city;
  final String teleponRumah;
  final String teleponRumah2;
  final String teleponRumah3;
  final String coOrigin;
  final String handphone;
  final String emailAddress;
  final DateTime dateJoin;
  final DateTime dueDate;
  final bool confirmed;
  final bool terminated;
  final DateTime tglBerhenti;
  final String alasan;
  final String catatan;
  final String linkPhoto;
  final String deptHead;
  final String deductions;
  final String jamsostekPremium;
  final String academic;
  final bool medical;
  final String spouseName;
  final DateTime birthDaySpouse;
  final String emrgcyContactNamePhone2;
  final String emrgcyContactNamePhone1;
  final String the90DayConfirmation;
  final String level;
  final int levelValue;
  final String language2;
  final String extention;
  final String postalCode;
  final String region;
  final bool absenStatus;
  final DateTime absenValidUntil;
  final DateTime tglLastUpdate;
  final String optr;
  final String hirarkiNo;
  final String jabatanTmp;
  final String clasMedical;
  final int noShift;
  final int noHrd;
  final bool forceFinger;
  final String memo;
  final String alamatSekarang;
  final String kota;
  final String kodePos2;
  final String telp2;
  final String telp1;
  final String tlp3;
  final String jmlAnak;
  final String tahunLulus;
  final String ukuranSepatu;
  final String ukuranHem;
  final String ukuranCelana;
  final String busJemput;
  final int pengalamanKerja;
  final String perusahaanTerakhir;
  final String golonganDarah;
  final String nonAcademik;
  final String firstGrade;
  final String grade;
  final String noJpk;
  final String npwp;
  final DateTime lastContrac;
  final int lama;
  final String mother;
  final DateTime startContract;
  final DateTime datejoinNew;
  final DateTime expDate;
  final String statusRecruitment;
  final int nilaiTunjangan;
  final String jenisTunjangan;
  final String noKartu;
  final String noaia;
  final DateTime jamsostekDate;
  final String noRecruitment;
  final String pathJabatan;
  final int autono;
  final String idCard;
  final String skck;
  final bool skckStatus;
  final bool pernyataan;
  final bool kk;
  final String oldId;
  final DateTime dateRetire;
  final String marital;
  final String kodeMedical;
  final String jabatan;
  final String xAgama;
  final String xDivisi;
  final String xDepartemen;
  final String xBagian;
  final String englishLevel;
  final String lockerNo;
  final String reHire;
  final String recStatus;
  final String simNo;
  final DateTime simExpire;
  final String asalSekolah;
  final String competencyRef;
  final DateTime competencyDueDate;
  final String kkNo;
  final String bpjsKesehatan;
  final DateTime skckExpire;
  final String serikat;
  final DateTime serikatExpDate;
  final DateTime lockerDateTaken;
  final DateTime lockerDateReturn;
  final int hemQty;
  final String emrgcyRelation;
  final int celanaQty;
  final int sepatuQty;
  final String ukuranRok;
  final int rokQty;
  final String altDept;
  final String emrgcyContactNamePhone3;
  final bool entitleMeal;
  final String kitasNo;
  final DateTime kitasExp;
  final String passportNo;
  final DateTime passportExp;
  final int noShift2;
  final String noAia1;
  final DateTime tglAia;
  final String noBpjskes;
  final String password;

  factory MasterKaryawans.fromJson(Map<String, dynamic> json) =>
      MasterKaryawans(
        kodeKaryawan: json["kodeKaryawan"],
        pinid: json["pinid"],
        noMesin: json["noMesin"],
        namaKaryawan: json["namaKaryawan"],
        noKtp: json["noKtp"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        unitKerja: json["unitKerja"],
        kodeJabatan: json["kodeJabatan"],
        divisi: json["divisi"],
        kodeDepartemen: json["kodeDepartemen"],
        kodeBagian: json["kodeBagian"],
        kodeStatusKaryawan: json["kodeStatusKaryawan"],
        kodeJenisKelamin: json["kodeJenisKelamin"],
        kodeStatusPerkawinan: json["kodeStatusPerkawinan"],
        statusKaryawan: json["statusKaryawan"],
        pph21: json["pph21"],
        tglLahir: DateTime.parse(json["tglLahir"]),
        tempatLahir: json["tempatLahir"],
        kodeAgama: json["kodeAgama"],
        alamat: json["alamat"],
        city: json["city"],
        teleponRumah: json["teleponRumah"],
        teleponRumah2: json["teleponRumah2"],
        teleponRumah3: json["teleponRumah3"],
        coOrigin: json["coOrigin"],
        handphone: json["handphone"],
        emailAddress: json["emailAddress"],
        dateJoin: DateTime.parse(json["dateJoin"]),
        dueDate: DateTime.parse(json["dueDate"]),
        confirmed: json["confirmed"],
        terminated: json["terminated"],
        tglBerhenti: DateTime.parse(json["tglBerhenti"]),
        alasan: json["alasan"],
        catatan: json["catatan"],
        linkPhoto: json["linkPhoto"],
        deptHead: json["deptHead"],
        deductions: json["deductions"],
        jamsostekPremium: json["jamsostekPremium"],
        academic: json["academic"],
        medical: json["medical"],
        spouseName: json["spouseName"],
        birthDaySpouse: DateTime.parse(json["birthDaySpouse"]),
        emrgcyContactNamePhone2: json["emrgcyContactNamePhone2"],
        emrgcyContactNamePhone1: json["emrgcyContactNamePhone1"],
        the90DayConfirmation: json["_90DayConfirmation"],
        level: json["level"],
        levelValue: json["levelValue"],
        language2: json["language2"],
        extention: json["extention"],
        postalCode: json["postalCode"],
        region: json["region"],
        absenStatus: json["absenStatus"],
        absenValidUntil: DateTime.parse(json["absenValidUntil"]),
        tglLastUpdate: DateTime.parse(json["tglLastUpdate"]),
        optr: json["optr"],
        hirarkiNo: json["hirarkiNo"],
        jabatanTmp: json["jabatanTmp"],
        clasMedical: json["clasMedical"],
        noShift: json["noShift"],
        noHrd: json["noHrd"],
        forceFinger: json["forceFinger"],
        memo: json["memo"],
        alamatSekarang: json["alamatSekarang"],
        kota: json["kota"],
        kodePos2: json["kodePos2"],
        telp2: json["telp2"],
        telp1: json["telp1"],
        tlp3: json["tlp3"],
        jmlAnak: json["jmlAnak"],
        tahunLulus: json["tahunLulus"],
        ukuranSepatu: json["ukuranSepatu"],
        ukuranHem: json["ukuranHem"],
        ukuranCelana: json["ukuranCelana"],
        busJemput: json["busJemput"],
        pengalamanKerja: json["pengalamanKerja"],
        perusahaanTerakhir: json["perusahaanTerakhir"],
        golonganDarah: json["golonganDarah"],
        nonAcademik: json["nonAcademik"],
        firstGrade: json["firstGrade"],
        grade: json["grade"],
        noJpk: json["noJpk"],
        npwp: json["npwp"],
        lastContrac: DateTime.parse(json["lastContrac"]),
        lama: json["lama"],
        mother: json["mother"],
        startContract: DateTime.parse(json["startContract"]),
        datejoinNew: DateTime.parse(json["datejoinNew"]),
        expDate: DateTime.parse(json["expDate"]),
        statusRecruitment: json["statusRecruitment"],
        nilaiTunjangan: json["nilaiTunjangan"],
        jenisTunjangan: json["jenisTunjangan"],
        noKartu: json["noKartu"],
        noaia: json["noaia"],
        jamsostekDate: DateTime.parse(json["jamsostekDate"]),
        noRecruitment: json["noRecruitment"],
        pathJabatan: json["pathJabatan"],
        autono: json["autono"],
        idCard: json["idCard"],
        skck: json["skck"],
        skckStatus: json["skckStatus"],
        pernyataan: json["pernyataan"],
        kk: json["kk"],
        oldId: json["oldId"],
        dateRetire: DateTime.parse(json["dateRetire"]),
        marital: json["marital"],
        kodeMedical: json["kodeMedical"],
        jabatan: json["jabatan"],
        xAgama: json["xAgama"],
        xDivisi: json["xDivisi"],
        xDepartemen: json["xDepartemen"],
        xBagian: json["xBagian"],
        englishLevel: json["englishLevel"],
        lockerNo: json["lockerNo"],
        reHire: json["reHire"],
        recStatus: json["recStatus"],
        simNo: json["simNo"],
        simExpire: DateTime.parse(json["simExpire"]),
        asalSekolah: json["asalSekolah"],
        competencyRef: json["competencyRef"],
        competencyDueDate: DateTime.parse(json["competencyDueDate"]),
        kkNo: json["kkNo"],
        bpjsKesehatan: json["bpjsKesehatan"],
        skckExpire: DateTime.parse(json["skckExpire"]),
        serikat: json["serikat"],
        serikatExpDate: DateTime.parse(json["serikatExpDate"]),
        lockerDateTaken: DateTime.parse(json["lockerDateTaken"]),
        lockerDateReturn: DateTime.parse(json["lockerDateReturn"]),
        hemQty: json["hemQty"],
        emrgcyRelation: json["emrgcyRelation"],
        celanaQty: json["celanaQty"],
        sepatuQty: json["sepatuQty"],
        ukuranRok: json["ukuranRok"],
        rokQty: json["rokQty"],
        altDept: json["altDept"],
        emrgcyContactNamePhone3: json["emrgcyContactNamePhone3"],
        entitleMeal: json["entitleMeal"],
        kitasNo: json["kitasNo"],
        kitasExp: DateTime.parse(json["kitasExp"]),
        passportNo: json["passportNo"],
        passportExp: DateTime.parse(json["passportExp"]),
        noShift2: json["noShift2"],
        noAia1: json["noAia1"],
        tglAia: DateTime.parse(json["tglAia"]),
        noBpjskes: json["noBpjskes"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "kodeKaryawan": kodeKaryawan,
        "pinid": pinid,
        "noMesin": noMesin,
        "namaKaryawan": namaKaryawan,
        "noKtp": noKtp,
        "firstName": firstName,
        "lastName": lastName,
        "unitKerja": unitKerja,
        "kodeJabatan": kodeJabatan,
        "divisi": divisi,
        "kodeDepartemen": kodeDepartemen,
        "kodeBagian": kodeBagian,
        "kodeStatusKaryawan": kodeStatusKaryawan,
        "kodeJenisKelamin": kodeJenisKelamin,
        "kodeStatusPerkawinan": kodeStatusPerkawinan,
        "statusKaryawan": statusKaryawan,
        "pph21": pph21,
        "tglLahir": tglLahir.toIso8601String(),
        "tempatLahir": tempatLahir,
        "kodeAgama": kodeAgama,
        "alamat": alamat,
        "city": city,
        "teleponRumah": teleponRumah,
        "teleponRumah2": teleponRumah2,
        "teleponRumah3": teleponRumah3,
        "coOrigin": coOrigin,
        "handphone": handphone,
        "emailAddress": emailAddress,
        "dateJoin": dateJoin.toIso8601String(),
        "dueDate": dueDate.toIso8601String(),
        "confirmed": confirmed,
        "terminated": terminated,
        "tglBerhenti": tglBerhenti.toIso8601String(),
        "alasan": alasan,
        "catatan": catatan,
        "linkPhoto": linkPhoto,
        "deptHead": deptHead,
        "deductions": deductions,
        "jamsostekPremium": jamsostekPremium,
        "academic": academic,
        "medical": medical,
        "spouseName": spouseName,
        "birthDaySpouse": birthDaySpouse.toIso8601String(),
        "emrgcyContactNamePhone2": emrgcyContactNamePhone2,
        "emrgcyContactNamePhone1": emrgcyContactNamePhone1,
        "_90DayConfirmation": the90DayConfirmation,
        "level": level,
        "levelValue": levelValue,
        "language2": language2,
        "extention": extention,
        "postalCode": postalCode,
        "region": region,
        "absenStatus": absenStatus,
        "absenValidUntil": absenValidUntil.toIso8601String(),
        "tglLastUpdate": tglLastUpdate.toIso8601String(),
        "optr": optr,
        "hirarkiNo": hirarkiNo,
        "jabatanTmp": jabatanTmp,
        "clasMedical": clasMedical,
        "noShift": noShift,
        "noHrd": noHrd,
        "forceFinger": forceFinger,
        "memo": memo,
        "alamatSekarang": alamatSekarang,
        "kota": kota,
        "kodePos2": kodePos2,
        "telp2": telp2,
        "telp1": telp1,
        "tlp3": tlp3,
        "jmlAnak": jmlAnak,
        "tahunLulus": tahunLulus,
        "ukuranSepatu": ukuranSepatu,
        "ukuranHem": ukuranHem,
        "ukuranCelana": ukuranCelana,
        "busJemput": busJemput,
        "pengalamanKerja": pengalamanKerja,
        "perusahaanTerakhir": perusahaanTerakhir,
        "golonganDarah": golonganDarah,
        "nonAcademik": nonAcademik,
        "firstGrade": firstGrade,
        "grade": grade,
        "noJpk": noJpk,
        "npwp": npwp,
        "lastContrac": lastContrac.toIso8601String(),
        "lama": lama,
        "mother": mother,
        "startContract": startContract.toIso8601String(),
        "datejoinNew": datejoinNew.toIso8601String(),
        "expDate": expDate.toIso8601String(),
        "statusRecruitment": statusRecruitment,
        "nilaiTunjangan": nilaiTunjangan,
        "jenisTunjangan": jenisTunjangan,
        "noKartu": noKartu,
        "noaia": noaia,
        "jamsostekDate": jamsostekDate.toIso8601String(),
        "noRecruitment": noRecruitment,
        "pathJabatan": pathJabatan,
        "autono": autono,
        "idCard": idCard,
        "skck": skck,
        "skckStatus": skckStatus,
        "pernyataan": pernyataan,
        "kk": kk,
        "oldId": oldId,
        "dateRetire": dateRetire.toIso8601String(),
        "marital": marital,
        "kodeMedical": kodeMedical,
        "jabatan": jabatan,
        "xAgama": xAgama,
        "xDivisi": xDivisi,
        "xDepartemen": xDepartemen,
        "xBagian": xBagian,
        "englishLevel": englishLevel,
        "lockerNo": lockerNo,
        "reHire": reHire,
        "recStatus": recStatus,
        "simNo": simNo,
        "simExpire": simExpire.toIso8601String(),
        "asalSekolah": asalSekolah,
        "competencyRef": competencyRef,
        "competencyDueDate": competencyDueDate.toIso8601String(),
        "kkNo": kkNo,
        "bpjsKesehatan": bpjsKesehatan,
        "skckExpire": skckExpire.toIso8601String(),
        "serikat": serikat,
        "serikatExpDate": serikatExpDate.toIso8601String(),
        "lockerDateTaken": lockerDateTaken.toIso8601String(),
        "lockerDateReturn": lockerDateReturn.toIso8601String(),
        "hemQty": hemQty,
        "emrgcyRelation": emrgcyRelation,
        "celanaQty": celanaQty,
        "sepatuQty": sepatuQty,
        "ukuranRok": ukuranRok,
        "rokQty": rokQty,
        "altDept": altDept,
        "emrgcyContactNamePhone3": emrgcyContactNamePhone3,
        "entitleMeal": entitleMeal,
        "kitasNo": kitasNo,
        "kitasExp": kitasExp.toIso8601String(),
        "passportNo": passportNo,
        "passportExp": passportExp.toIso8601String(),
        "noShift2": noShift2,
        "noAia1": noAia1,
        "tglAia": tglAia.toIso8601String(),
        "noBpjskes": noBpjskes,
        "password": password,
      };
}
