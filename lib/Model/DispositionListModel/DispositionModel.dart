// {
//     "respType": "Success",
//     "respCode": "WS100",
//     "respDesc": "Data Retrived Successfully",
//     "data": "[{\"DispID\":1,\"DispListVal\":\"ok\"},{\"DispID\":1,\"DispListVal\":\"defect\"},{\"DispID\":1,\"DispListVal\":\"opened\"},{\"DispID\":1,\"DispListVal\":\"box_damage\"},{\"DispID\":1,\"DispListVal\":\"no_accesories\"},{\"DispID\":1,\"DispListVal\":\"item_missing\"},{\"DispID\":2,\"DispListVal\":\"ok\"},{\"DispID\":2,\"DispListVal\":\"dent\"},{\"DispID\":2,\"DispListVal\":\"scratched\"},{\"DispID\":2,\"DispListVal\":\"not-good\"},{\"DispID\":3,\"DispListVal\":\"ok\"},{\"DispID\":3,\"DispListVal\":\"no-tag\"},{\"DispID\":3,\"DispListVal\":\"expired\"},{\"DispID\":3,\"DispListVal\":\"opened\"}]"
// }
import 'dart:convert';

import '../../DBModel/DispositionListDB/DispositionListTDB.dart';

class DispositionDataModel {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  List<GetDisPositonList> dispositionData;
  String exception;
  DispositionDataModel(
      {required this.dispositionData,
      required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      required this.stsCode});

  factory DispositionDataModel.fromJson(
      Map<String, dynamic> jsons, int statuzCode) {
    if (jsons['data'] != null) {
      // log('message::${jsonDecode(json['data'])}');
      var list = jsonDecode(jsons['data']) as List;
      List<GetDisPositonList> dataList =
          list.map((data) => GetDisPositonList.fromJson(data)).toList();
      return DispositionDataModel(
          dispositionData: dataList,
          exception: '',
          respCode: jsons['respCode'],
          respDesc: jsons['respDesc'],
          respType: jsons['respType'],
          stsCode: statuzCode);
    } else {
      return DispositionDataModel(
          dispositionData: [],
          exception: '',
          respCode: jsons['respCode'],
          respDesc: jsons['respDesc'],
          respType: jsons['respType'],
          stsCode: statuzCode);
    }
  }

  factory DispositionDataModel.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return DispositionDataModel(
        exception: exp['respDesc'],
        respCode: exp['respCode'],
        respDesc: exp['respDesc'],
        respType: exp['respType'],
        stsCode: statuzCode,
        dispositionData: []
        // data: null
        );
  }

  factory DispositionDataModel.error(int rescode, String exp) {
    return DispositionDataModel(
        exception: exp,
        respCode: '',
        respDesc: '',
        respType: '',
        stsCode: rescode,
        dispositionData: []
        // data: null
        );
  }
}

class GetDisPositonList {
  int? dispID;
  String? dispListVal;
  GetDisPositonList({this.dispID, required this.dispListVal});
  factory GetDisPositonList.fromJson(Map<String, dynamic> json) {
    return GetDisPositonList(
        dispID: json['DispID'] ?? 0, dispListVal: json['DispListVal'] ?? '');
  }

  Map<String, Object?> toMap() => {
        DisPositonListTable.dispID: dispID,
        DisPositonListTable.dispositionVal: dispListVal,
      };
}
