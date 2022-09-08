import 'package:bloggie/Controllers/notification_controller.dart';
import 'package:bloggie/UI/Size_config.dart';
import 'package:bloggie/UI/Themes.dart';
import 'package:bloggie/UI/Widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notifications extends GetView<NotificationsController> {
  const Notifications({Key? key}) : super(key: key);

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
      ),
      backgroundColor: context.theme.backgroundColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NotificationW(),
              NotificationW(),
            ],
          ),
        ),
      ),
    );
  }
}
