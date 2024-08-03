package com.buson.verifytapp
import android.os.Bundle
import android.provider.Settings
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.content.Intent

class MainActivity: FlutterActivity() {
  private val CHANNEL = "com.buson.verifytapp/time"
  override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
    super.configureFlutterEngine(flutterEngine)
    MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
      if (call.method == "checkNetworkTime") {
        val isNetworkTimeEnabled = isNetworkTimeEnabled()
        result.success(isNetworkTimeEnabled)
      }  else if (call.method == "openDateTimeSettings") {
                openDateTimeSettings()
                result.success(null)
            }else {
        result.notImplemented()
      }
    }
  }

  private fun isNetworkTimeEnabled(): Boolean {
    return try {
      Settings.Global.getInt(contentResolver, Settings.Global.AUTO_TIME) == 1
    } catch (e: Settings.SettingNotFoundException) {
      e.printStackTrace()
      false
    }
  }
  
    private fun openDateTimeSettings() {
        val intent = Intent(Settings.ACTION_DATE_SETTINGS)
        startActivity(intent)
    }
}
