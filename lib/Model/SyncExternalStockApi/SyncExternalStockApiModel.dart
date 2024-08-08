class StockSnapModel {
  String response;
  int stsCode;
  StockSnapModel({required this.response, required this.stsCode});
  factory StockSnapModel.fromJson(dynamic json, int stscode) {
    if (stscode == 200) {
      return StockSnapModel(response: json, stsCode: stscode);
    } else {
      return StockSnapModel(response: '', stsCode: stscode);
    }
  }
  factory StockSnapModel.issue(json, int statuzCode) {
    return StockSnapModel(
      response: json,
      stsCode: statuzCode,

      // data: null
    );
  }
}
