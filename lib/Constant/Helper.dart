import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static String sharedPreferenceUserLoggedInKey = "ISLOGGEDIN";
  static String sharedPreferenceSapUserID = "SapUserID";
  static String sharedPreferenceToken = "Token";
  static String sharedPreferenceFCMToken = "FCMToken";
  static String sharedPreferenceDeviceID = "DeviceID";
  static String sharedPreferenceTenetID = "TenetID";
  static String sharedPreferenceTenetID1 = "TenetID1";

  static String sharedPreferenceLogginUserCode = "Usercode";
  static String userName = "UserName";
  static String sharedPreferencePaassword = "Password";
  static String dbUserName = "dbUserName";
  static String dbPassword = "dbPassword";
  static String userType = "userType";
  static String whsecode = "whseCode";

  static Future<bool> saveUserType(String userType1) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userType, userType1);
  }

  static Future<String?> getUserType() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userType);
  }

  static clearUserType() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(userType);
  }

  static Future<bool> savewhseCode(String whsCode1) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(whsecode, whsCode1);
  }

  static Future<String?> getWhsCode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(whsecode);
  }

  static Future<String?> getSlpCode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(whsecode);
  }

  static clearSlpCode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(whsecode);
  }

  static Future<bool> savePasswordSharedPreference(String deviceID) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferencePaassword, deviceID);
  }

  static Future<String?> getPasswordSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferencePaassword);
  }

  static Future<bool> savedbUserName(String dbUserName1) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(dbUserName, dbUserName1);
  }

  static Future<String?> getdbUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(dbUserName);
  }

  static cleardbUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(dbUserName);
  }

  static Future<bool> saveUserName(String userName1) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(userName, userName1);
  }

  static Future<String?> getUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(userName);
  }

  static clearUserName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(userName);
  }

  static Future<bool> saveLogginUserCodeSharedPreference(
      String loggedInUsercode) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(
        sharedPreferenceLogginUserCode, loggedInUsercode);
  }

  static Future<String?> getLogginUserCodeSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceLogginUserCode);
  }

  static clearUserCodeDSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(sharedPreferenceLogginUserCode);
  }

  static Future<bool> saveUserIDSharedPreference(String userEmail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceSapUserID, userEmail);
  }

  static Future<String?> getSapUserIDSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceSapUserID);
  }

  static Future<bool> saveTenetIDSharedPreference(String userEmail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceTenetID, userEmail);
  }

  static Future<bool> saveTenetIDSharedPreference1(String tenentId) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceTenetID1, tenentId);
  }

  static Future<bool> saveUserLoggedInSharedPreference(
      bool isUserLoggedIn) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(
        sharedPreferenceUserLoggedInKey, isUserLoggedIn);
  }

  static Future<bool?> getUserLoggedInSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool(sharedPreferenceUserLoggedInKey);
  }

  static clearUserLoggedInSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(sharedPreferenceUserLoggedInKey);
  }

  static clearCheckedTennetIDSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(sharedPreferenceTenetID);
  }

  static Future<String?> getTenetIDSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceTenetID);
  }

  static Future<String?> getTenetIDSharedPreference1() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceTenetID1);
  }

  static Future<bool> saveDeviceIDSharedPreference(String deviceID) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceDeviceID, deviceID);
  }

  static Future<String?> getDeviceIDSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceDeviceID);
  }

  static clearCheckedDeviceIDSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(sharedPreferenceDeviceID);
  }

  static Future<bool> saveFCMTokenSharedPreference(String fcmToken) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceFCMToken, fcmToken);
  }

  static Future<String?> getFCMTokenSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceFCMToken);
  }

  static Future<bool> saveTokenSharedPreference(String token) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(sharedPreferenceToken, token);
  }

  static Future<String?> getTokenSharedPreference() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(sharedPreferenceToken);
  }
}
