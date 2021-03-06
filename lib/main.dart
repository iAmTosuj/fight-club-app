import 'package:flutter/material.dart';
import 'package:flutter_fight_club/repository/shared_pref_repository.dart';
import 'package:flutter_fight_club/ui/application.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences _prefs = await SharedPreferences.getInstance();
  SharedPrefRepository _prefsRepository = SharedPrefRepository(_prefs);
  Get.put(_prefsRepository);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Application();
  }
}
