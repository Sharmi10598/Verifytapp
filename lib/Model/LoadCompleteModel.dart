// PostAuditloadcomplete{
//   "respType": "success",
//   "respCode": "WS100",
//   "respDesc": "Status updated successfully",
//   "data": "[]"
// }
// class LoadComplete {

// }
class LoadComplete {
  String respType;
  String respCode;
  String respDesc;
  int stsCode;
  // List<GetAuditDataModel> auditData;
  String exception;
  LoadComplete(
      {required this.exception,
      required this.respCode,
      required this.respDesc,
      required this.respType,
      // required this.auditData,
      required this.stsCode});
  factory LoadComplete.fromJson(Map<String, dynamic> json, int statuzCode) {
    // Map<String, dynamic>
    if (statuzCode == 200) {
      // log('message::${jsonDecode(json['data'])}');
      // var list = jsonDecode(json['data']) as List;
      // List<GetAuditDataModel> dataList =
      //     list.map((data) => GetAuditDataModel.fromJson(data)).toList();
      // log('Test message11');

      return LoadComplete(
        exception: '',
        respCode: json['respCode'],
        respDesc: json['respDesc'],
        respType: json['respType'],
        stsCode: statuzCode,
        // auditData: dataList
      );
    } else {
      return LoadComplete(
        exception: '',
        respCode: json['respCode'],
        respDesc: json['respDesc'],
        respType: json['respType'],
        stsCode: statuzCode,
        // auditData: []
      );
    }
  }

  factory LoadComplete.issue(
      int rescode, Map<String, dynamic> exp, int statuzCode) {
    return LoadComplete(
      exception: '',
      respCode: exp['respCode'],
      respDesc: exp['respDesc'],
      respType: exp['respType'],
      stsCode: statuzCode,
      // auditData: []
      // data: null
    );
  }

  factory LoadComplete.issue2(
    int rescode,
    String exp,
  ) {
    return LoadComplete(
      exception: exp,
      respCode: '',
      respDesc: '',
      respType: '',
      stsCode: rescode,
      // auditData: []
      // data: null
    );
  }

  factory LoadComplete.error(int rescode, String exp) {
    return LoadComplete(
      exception: exp,
      respCode: '',
      respDesc: '',
      respType: '',
      stsCode: rescode,
      // auditData: []
      // data: null
    );
  }
}
