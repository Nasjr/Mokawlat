import 'package:hive_flutter/hive_flutter.dart';
import 'package:mokawlat/utils/constants/local_storage.dart';

class AppLocalStorage {
  static final AppLocalStorage _instance = AppLocalStorage._internal();
  factory AppLocalStorage() {
    return _instance;
  }
  AppLocalStorage._internal();

  Future<void> saveData<T>(String key, T value) async {
    await Hive.box(LocalDataSourceBoxs.configBox).put(key, value);
  }

  T? readData<T>(String key, [T? defult]) {
    print(key);
    return Hive.box(LocalDataSourceBoxs.configBox)
        .get(key, defaultValue: defult);
  }

  Future<void> removeData(String key) async {
    await Hive.box(LocalDataSourceBoxs.configBox).delete(key);
  }

  Future<void> logout() async {
    await Hive.box(LocalDataSourceBoxs.configBox)
        .delete(LocalDataSourceKeys.userData);
  }

  Future<void> getCurrentUser() async {
    Map<String, dynamic>? user =
        AppLocalStorage().readData(LocalDataSourceKeys.userData) == null
            ? null
            : Map<String, dynamic>.from(
                AppLocalStorage().readData(LocalDataSourceKeys.userData));
  }
}



/// *** *** *** *** *** Example *** *** *** *** *** ///

// LocalStorage localStorage = LocalStorage();
//
// // Save data
// localStorage.saveData('username', 'JohnDoe');
//
// // Read data
// String? username = localStorage.readData<String>('username');
// print('Username: $username'); // Output: Username: JohnDoe
//
// // Remove data
// localStorage.removeData('username');
//
// // Clear all data
// localStorage.clearAll();