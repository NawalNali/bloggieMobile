import 'package:bloggie/Controllers/home_controller.dart';
import 'package:bloggie/Controllers/theme_controller.dart';
import 'package:bloggie/UI/Size_config.dart';
import 'package:bloggie/UI/Themes.dart';
import 'package:bloggie/UI/Widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          title: Text(
            controller.title,
            style: Themes.titleStyle,
          ),
          backgroundColor: context.theme.backgroundColor,
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  ThemeController().toggleTheme();
                },
                icon: Icon(
                  Get.isDarkMode
                      ? Icons.wb_sunny_outlined
                      : Icons.nightlight_round_outlined,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                ))
          ]),
      backgroundColor: context.theme.backgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Post(),
              Post(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.bottomSheet(Container(
            color: context.theme.primaryColor,
            child: Column(
              children: [
                TextField(
                  maxLines: 8,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                        width: 5.0,
                      )),
                      hintText: 'What\'s your thoughts ?'),
                )
              ],
            ),
          ));
        },
        child: Icon(Icons.edit_rounded),
      ),
    );
  }
}
