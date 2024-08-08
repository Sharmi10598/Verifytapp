// ignore_for_file: prefer_interpolation_to_compose_strings, unnecessary_null_comparison

import 'dart:convert';

class GetUrlModel {
  String? stocksnapUrl;
  String? customeridUrl;
  String message;

  bool? status;
  String? exception;
  int? stcode;
  GetUrlModel(
      {required this.stocksnapUrl,
      required this.customeridUrl,
      required this.message,
      required this.status,
      this.exception,
      required this.stcode});
  factory GetUrlModel.fromJson(Map<String, dynamic> jsons, int stcode) {
    print("URL JSON Before Api::" + jsons.toString());
    if (jsons != null) {
      print("URL JSON After Api::" + jsons.toString());
      print("customerUrl::" + jsons['customerUrl'].toString());
      return GetUrlModel(
          customeridUrl: jsons['customerUrl'] ?? '',
          stocksnapUrl: jsons['snapStockSyncUrl'] ?? '',
          message: "sucess",
          status: true,
          stcode: stcode,
          exception: null);
    } else {
      return GetUrlModel(
          stocksnapUrl: null,
          customeridUrl: null,
          message: "failed",
          status: false,
          stcode: stcode,
          exception: null);
    }
  }
  factory GetUrlModel.issue(int rescode, String exp) {
    return GetUrlModel(
      stocksnapUrl: null,
      customeridUrl: null,
      message: 'Exception',
      status: null,
      stcode: rescode,
      exception: exp,
    );
  }
  // factory GetUrlModel.error(String jsons, int stcode) {
  //   return GetUrlModel(
  //       url: null,
  //       message: 'Exception',
  //       status: null,
  //       stcode: stcode,
  //       exception: jsons);
  // }
  factory GetUrlModel.error(String jsons, int stcode) {
    return GetUrlModel(
        stocksnapUrl: null,
        customeridUrl: null,
        message: 'Catch',
        status: null,
        stcode: stcode,
        exception: jsons);
  }
}
