import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example_provider/src/domain/models/model_video3.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../data/datasources/remote/service_video3.dart';

class ProviderVideo3 extends ChangeNotifier {
  DataModelVideo3? data;
  bool isLoading = false;
  bool isBack = false;

  getSingleData() async {
    isLoading = true;
    data = (await getSingleDataDio());
    isLoading = false;
    notifyListeners();
  }

  Future<void> addData(DataModelVideo3 data) async {
    isLoading = true;
    notifyListeners();
    // http.Response response = (await addDataHttp(data))!;
    Response<dynamic> response = (await addDataDio(data))!;
    if (response.statusCode == HttpStatus.created) {
      isBack = true;
    }
    isLoading = false;
    notifyListeners();
  }
}
