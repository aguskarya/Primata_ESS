import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';

import 'package:primata_ess/model/user_location.dart';
import 'package:primata_ess/services/GlobalWebApi/st_global.dart';

const _url = SetupUrl.url;

class APIServiceAbsen {
  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(_url + api);
    var _payload = json.encode(object);
    var _headers = {
      'Content-Type': 'application/json',
    };

    var response = await http.post(url, body: _payload, headers: _headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }
}
