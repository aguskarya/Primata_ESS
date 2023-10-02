import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:primata_ess/model/view_TransJadwalShiftWeb.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

const _url = SetupUrl.url;
const _idKar = KodeKar.kodekar;

// static DateTime today = DateTime.now();
// static String startDate = today.toString();
// static String endDate = today.add(const Duration(days: 7)).toString();

//connect ke webservice reten Tabel Attendance
Future<List<ViewTransJadwalShiftWeb>> getlistAttendance() async {
  String apiUrl =
      "$_url/viewTransJadwalShiftWeb?id=201810003&Tglawal=2022-01-05&tglakhir=2022-01-11";

  var apiResult = await http
      .get(Uri.parse(apiUrl), headers: {"Accept": "application/json"});

  if (apiResult.statusCode == 200) {
    List<ViewTransJadwalShiftWeb> hasil;
    hasil = (json.decode(apiResult.body) as List)
        .map((e) => ViewTransJadwalShiftWeb.fromJson(e))
        .toList();
    return hasil;
  } else {
    throw Exception(apiResult.reasonPhrase);
  }
}
