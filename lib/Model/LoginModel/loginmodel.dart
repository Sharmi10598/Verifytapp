class LoginModel {
  String? loginstatus;
  String? loginMsg;
  String? respDesc;
  String? whsCode;

  // LoginModelData? data;
  int? resCode;
  String? excep;
  String? token;
  List<LoginVerificationList>? loginVerifiList;
// {
//     "respType": "Success",
//     "respCode": "200",
//     "respDesc": "Token Generated Successfully",
//     "data": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJlbmNyeXB0ZWRDbGFpbXMiOiJtSmZ6WGFOMUR4ZlJvRnM5RGVzcGxmQWdwdUxsbm1FTmk4NThPUGI2QzB6MDEzYVlkVFVuYjFlWDVNd1A5cUwrRkRJelZxTHNFZlUxZnJPTnlEck1FcXpYVWN2ZmNkQkNlK05NVzFaREZlY2R2aGhrV1BnTnFKUG1Sbmx2MTlld0d0SVIxbnpvS05mOVhSNEMxWVhzVitQSmkxS0dKeFRiQlUyc1A2blRzcWFVY3I1VzJrYlp4THMrSzZrbndsc1Z4SW00OEFNWHM5c2kybk8zRzlJVFFCekNtb0xURVZHeGtSNmQ5b0lkS0h4RHNhV2dWcVVRR2NnWUsyQWVYSE5ScitvbUlVY3lDd3kyZHloUW1yaXBKTFdzS0lEZHdxS1ptMWJaVzEwaFJVbWNhZjJXRC9DT0tvT1I4WEhhaGFiM0JSSGZTVHl5bmJqdUtsb0dhRENpSThnZG0rWGgxbzBuWVo2aXN6WnlIcWc9IiwibmJmIjoxNzIwNjk1MTQ5LCJleHAiOjE3MjA3MjM5NDksImlhdCI6MTcyMDY5NTE0OX0.jSdTP3yFSrDDXDzf-VKjztkylQQqvslKw9YI8wvzHFRHkYC-iblTiRjFrKK4vfQNf6N1_2JTzHRmzeJBBY5Mmw"
// }
  LoginModel(
      {required this.loginstatus,
      required this.loginMsg,
      required this.loginVerifiList,
      required this.whsCode,
      // this.data,
      required this.respDesc,
      this.excep,
      this.token,
      required this.resCode});

  factory LoginModel.fromJson(Map<String, dynamic> json,
      Map<String, dynamic> verifijsons, int rescode) {
    if (verifijsons != null) {
      // var list = verifijsons['restrictionData'] as List;
      // if(list.isEmpty){
      return LoginModel(
          respDesc: verifijsons['respDesc'],
          loginstatus: "Success",
          loginMsg: "Success",
          whsCode: json['WhsCode'].toString(),
          // data: LoginModelData.fromJson(jsons),
          excep: null,
          loginVerifiList: null,
          resCode: rescode,
          token: verifijsons['data']);
//       }else{
// List<LoginVerificationList> dataList =
//           list.map((data) => LoginVerificationList.fromJson(data)).toList();
//       //
//       return LoginModel(
//         loginstatus: "success",
//         loginMsg: "success",
//         data: LoginModelData.fromJson(jsons),
//         loginVerifiList: dataList,
//         resCode: rescode,
//         excep: null,
//          token: verifijsons['data']
//       );
//       }
    } else {
      return LoginModel(
          loginstatus: "failed",
          respDesc: verifijsons['respDesc'],
          loginMsg: "failed",
          excep: null,
          loginVerifiList: null,
          resCode: rescode,
          whsCode: '');
    }
  }

  factory LoginModel.issue(int rescode, Map<String, dynamic> exp) {
    return LoginModel(
      excep: exp['respDesc'],
      resCode: rescode,
      loginstatus: null,
      respDesc: exp['respDesc'],
      loginMsg: null,
      loginVerifiList: null, whsCode: '',
      // data: null
    );
  }

  factory LoginModel.issue2(int rescode, String exp) {
    return LoginModel(
      excep: exp,
      resCode: rescode,
      loginstatus: null,
      respDesc: null,
      loginMsg: null,
      loginVerifiList: null, whsCode: '',
      // data: null
    );
  }

  factory LoginModel.error(int rescode, String exp) {
    return LoginModel(
      excep: exp,
      resCode: rescode,
      respDesc: null,
      loginstatus: null,
      loginMsg: "Catch",
      loginVerifiList: null, whsCode: '',
      // data: null
    );
  }
}

// class LoginModelData {
//   String licenseKey;
//   // String endPointUrl;
//   // String sessionID;
//   String UserID;
//   // String userDB;
//   // String dbUserName;
//   // String dbPassword;
//   String userType;
//   String slpcode;
//   String urlColumn;
//   String tenantId;
//   String devicecode;
//   String userCode;
//   String? storeid;
//   String? whsecode;

//   LoginModelData(
//       {required this.storeid,
//       required this.licenseKey,
//       required this.urlColumn,
//       required this.tenantId,
//       required this.UserID,
//       required this.devicecode,
//       required this.userCode,
//       required this.whsecode,
//       // required this.dbPassword,
//       required this.userType,
//       required this.slpcode});

// factory LoginModelData.fromJson(Map<String, dynamic> json) {
//   return LoginModelData(
//         licenseKey: json["LicenseKey"] ?? '',
//         urlColumn: json[
//             "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier"],
//         tenantId: json["TenantId"] ?? '',
//         userCode: json['UserCode'] ?? '',
//         UserID: json['USerId'] ?? '',
//         devicecode: json['DeviceCode'] ?? '',
//         // dbPassword: json['dbPassword'],
//         userType: json['UserTypeId'] ?? '',
//         slpcode: json['Slpcode'] ?? '',
//         storeid: json['StoreId'] ?? '',
//         whsecode: json['WhsCode'] ?? '');
//   }
//   // {"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier":"DFG56","USerId":"3","TenantId":"cc45","DeviceCode":"","UserCode":"2233","UserTypeId":"1","LicenseKey":"","Slpcode":"EMP01"}
// }

class LoginVerificationList {
  int? id;
  String? code;
  int? restrictionType;
  String? restrictionData;
  String? remarks;

  LoginVerificationList({
    required this.id,
    required this.code,
    required this.restrictionData,
    required this.restrictionType,
    required this.remarks,
  });

  factory LoginVerificationList.fromJson(Map<String, dynamic> json) {
    return LoginVerificationList(
      id: json["id"] ?? 0,
      code: json["code"] ?? '',
      restrictionType: json["restrictionType"] ?? 0,
      restrictionData: json['restrictionData'] ?? '',
      remarks: json['remarks'] ?? '',
    );
  }
  // {"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier":"DFG56","USerId":"3","TenantId":"cc45","DeviceCode":"","UserCode":"2233","UserTypeId":"1","LicenseKey":"","Slpcode":"EMP01"}
}

class PostLoginData {
  String? deviceCode;
  String? licenseKey;
  String? username;
  String? password;
  String? fcmToken;
  String? ipaddress;
  String? ipName;
  String? latitude;
  String? langtitude;
  String? devicename;
  String? tenentID;
}
