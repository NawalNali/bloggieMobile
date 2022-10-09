import 'package:bloggie/Controllers/home_controller.dart';
import 'package:bloggie/Controllers/notification_controller.dart';
import 'package:bloggie/Controllers/profile_controller.dart';
import 'package:bloggie/UI/Pages/homepage.dart';
import 'package:bloggie/UI/Pages/notifications.dart';
import 'package:bloggie/UI/Pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bloggie/Controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<NotificationsController>(() => NotificationsController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              Homepage(),
              Notifications(),
              Profile(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: context.theme.accentColor,
          selectedItemColor: context.theme.shadowColor,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: context.theme.backgroundColor.withAlpha(175),
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      );
    });
  }
}
