import 'constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future<bool> saveData({String saveKey, String saveValue}) async {
  final prefs = await SharedPreferences.getInstance();
  final value = prefs.setString(saveKey, saveValue);
  if (value != null) {
    print(value);
    return true;
  } else {
    return false;
  }
}
Future<String> readData(String readKey) async {
  final prefs = await SharedPreferences.getInstance();
  final key = '$readKey';
  final value = prefs.getString(key) ?? null;
  return value;
}
toggleFunc(int idx) {
  if (idx == 1) {
    isDashboard = true;
    isFarm = false;
    isNowcast = false;
    isForecast = false;
    isNotifications = false;
    isHelp = false;
    isManageNotif=false;
  } else if (idx == 2) {
    isDashboard = false;
    isFarm = true;
    isNowcast = false;
    isForecast = false;
    isNotifications = false;
    isHelp = false;
    isManageNotif=false;
  } else if (idx == 3) {
    isDashboard = false;
    isFarm = false;
    isNowcast = true;
    isForecast = false;
    isNotifications = false;
    isHelp = false;
    isManageNotif=false;
  } else if (idx == 4) {
    isDashboard = false;
    isFarm = false;
    isNowcast = false;
    isForecast = true;
    isNotifications = false;
    isHelp = false;
    isManageNotif=false;
  } else if (idx == 5) {
    isDashboard = false;
    isFarm = false;
    isNowcast = false;
    isForecast = false;
    isNotifications = true;
    isHelp = false;
    isManageNotif=false;
  } else if (idx == 6) {
    isDashboard = false;
    isFarm = false;
    isNowcast = false;
    isForecast = false;
    isNotifications = false;
    isHelp = true;
    isManageNotif=false;
  }
  else if (idx == 7) {
    isDashboard = false;
    isFarm = false;
    isNowcast = false;
    isForecast = false;
    isNotifications = false;
    isHelp = false;
    isManageNotif=true;
  }
}
bool getnotifstate()
{
    return notifsTab;
}
changeNotifsState()
{
  notifsTab!=notifsTab;
}