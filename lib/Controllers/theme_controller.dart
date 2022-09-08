import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController{
  final GetStorage getStorage = GetStorage();
  final _key = 'DarkMode';

  void _saveTheme(bool value) => getStorage.write(_key, value);

  bool _loadTheme() => getStorage.read<bool>(_key) ?? false;

  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme()
  {
    Get.changeThemeMode(_loadTheme() ? ThemeMode.light : ThemeMode.dark);
    _saveTheme(!_loadTheme());
  }
}