import 'package:get/get.dart';

class ProfileController extends GetxController {
  String name = "Joudy Nawar";
  String email = "Example@email.com";

  void setName(String newName) {
    name = newName;
  }

  void setEmail(String newEmail) {
    email = newEmail;
  }
}
