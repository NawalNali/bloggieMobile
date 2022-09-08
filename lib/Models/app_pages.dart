import 'package:bloggie/Models/app_routes.dart';
import 'package:bloggie/UI/Pages/dashboard.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => Dashboard(),
      binding: DashboardBinding(),
    )
  ];
}
