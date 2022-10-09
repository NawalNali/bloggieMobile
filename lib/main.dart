import 'package:bloggie/Controllers/theme_controller.dart';
import 'package:bloggie/Models/app_pages.dart';
import 'package:bloggie/Models/app_routes.dart';
import 'package:bloggie/UI/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloggie',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeController().theme,
      getPages: AppPages.list,
      initialRoute: AppRoutes.dashboard,
    );
  }
}
