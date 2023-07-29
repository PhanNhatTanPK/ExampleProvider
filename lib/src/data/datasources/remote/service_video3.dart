import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:example_provider/src/domain/models/model_video3.dart';
import 'package:http/http.dart' as http;

// Use http package to get data from API
Future<DataModelVideo3?> getSingleDataHttp() async {
  DataModelVideo3? result;
  try {
    final reponse = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts/2"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        });
    if (reponse.statusCode == HttpStatus.ok) {
      result = DataModelVideo3.fromJson(reponse.body);
    } else {
      print("error");
    }
  } catch (e) {
    log(e.toString());
  }
  return result;
}

// Use http to add data to database
Future<http.Response?> addDataHttp(DataModelVideo3 data) async {
  http.Response? response;
  try {
    response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        headers: {HttpHeaders.contentTypeHeader: "application/json"},
        body: data.toJson());
  } catch (e) {
    e.toString();
  }
  return response;
}

// Use dio package to get data from API
final dio = Dio();

Future<DataModelVideo3?> getSingleDataDio() async {
  DataModelVideo3? result;
  Response response;
  try {
    response = await dio.get("https://jsonplaceholder.typicode.com/posts/2");
    if (response.statusCode == HttpStatus.ok) {
      result = DataModelVideo3.fromMap(response.data);
    } else {
      print("error");
    }
  } catch (e) {
    log(e.toString());
  }
  return result;
}

Future<Response<dynamic>?> addDataDio(DataModelVideo3 data) async {
  Response<dynamic>? response;
  try {
    response = await dio.post("https://jsonplaceholder.typicode.com/posts",
        data: data);
  } catch (e) {
    e.toString();
  }
  return response;
}
