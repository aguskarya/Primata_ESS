import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:primata_ess/model/AbsenInOut/getHistoryAbsensiOfflineTransfer_inOut.dart';
import 'package:primata_ess/model/AbsenInOut/historyAbsensiOfflineTransfer_InOut.dart';
import 'package:primata_ess/model/view_TransJadwalShiftWeb.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

const _url = SetupUrl.url;
const _idKar = KodeKar.kodekar;
const _no = NoAbsen;

DateTime today = DateTime.now();
//tgl berlaku hari ini
// String startDate = today.toString();
// String endDate = today.add(const Duration(days: 7)).toString();

Future<List<GetHistoryAbsensiOfflineTransfer>> getHistoryAbsensiIn() async {
  String apiUrl = "$_url/HistoryAbsensiOfflineTransfers/$_no";

  var apiResult = await http
      .get(Uri.parse(apiUrl), headers: {"Accept": "application/json"});

  if (apiResult.statusCode == 200) {
    List<GetHistoryAbsensiOfflineTransfer> hasil;
    hasil = (json.decode(apiResult.body) as List)
        .map((e) => GetHistoryAbsensiOfflineTransfer.fromJson(e))
        .toList();
    return hasil;
  } else {
    throw Exception(apiResult.reasonPhrase);
  }
}
