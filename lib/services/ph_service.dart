import 'dart:convert';

import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

const _url = SetupUrl.url;
const _idKar = KodeKar.kodekar;

class ApiServicePH {
  static get http => null;

  // static Future<List<PublicHoliday>> getListPH() async {
  //   var response = await http.get(
  //       Uri.encodeFull('$_url/Holidays?kode_agama=B&tahun=2015'),
  //       headers: {"Accept": "application/json"});

  //   if (response.statusCode == 200) {
  //     List<PublicHoliday> listData;
  //     listData = (json.decode(response.body) as List)
  //         .map((i) => PublicHoliday.fromJson(i))
  //         .toList();
  //     return listData;
  //   } else {
  //     return [];
  //   }
  // }

  static Future<List> listPH() async {
    String apiUrl = "$_url/Holidays?kode_agama=H&tahun=2015";
    try {
      var apiResult = await http
          .get(Uri.encodeFull(apiUrl), headers: {"Accept": "application/json"});

      if (apiResult.statusCode == 200) {
        List hasil = json.decode(apiResult.body) as List;
        return hasil;
      } else {
        return [];
      }
    } catch (e) {
      return [];
      print(e);
    }
  }
}
