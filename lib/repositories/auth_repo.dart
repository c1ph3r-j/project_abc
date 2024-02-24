import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  final auth = FirebaseAuth.instance;
  late final Rx<User?> currentUser;

  @override
  void onReady() {
    if(auth.currentUser != null) {
      currentUser.value = auth.currentUser;
      currentUser.bindStream(auth.userChanges());
    }
  }

  bool isUserLoggedIn() {
    return currentUser.value != null;
  }


}