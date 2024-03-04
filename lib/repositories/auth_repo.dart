import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:project_abc/comman/comman_methods.dart';
import 'package:project_abc/views/dashboard/dashboard_view.dart';

import '../comman/model/common_model_classes.dart';
import '../views/welcome/welcome_view.dart';

class AuthRepository extends GetxController {
  static AuthRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<UserDetail?> currentUser;

  @override
  void onReady() {
    if(_auth.currentUser != null) {
      currentUser.value = _getCurrentUserFromFirebaseUser(currentUser: _auth.currentUser!);
      ever(currentUser, _resetToWelcomeScreen);
    }
  }

  bool isUserLoggedIn() {
    return currentUser.value != null;
  }

  _resetToWelcomeScreen(UserDetail? user) {
    user == null ? Get.offAll(()=> const WelcomeView()) : Get.offAll(()=> const DashboardView());
  }

  void loginWithEmailAndPassword({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      if(_auth.currentUser != null) {
        currentUser.value = _getCurrentUserFromFirebaseUser(currentUser: _auth.currentUser!);
      }
    } on Exception catch(e){
      handleExceptions(e);
    }
  }
  
  void createUserWithEmailAndPassword({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      if(_auth.currentUser != null) {
        currentUser.value = _getCurrentUserFromFirebaseUser(currentUser: _auth.currentUser!);
      }
    } on Exception catch (e) {
      handleExceptions(e);
    }
  }

  UserDetail _getCurrentUserFromFirebaseUser({required User currentUser}) {
    UserDetail userDetail = UserDetail();
    userDetail.userName = currentUser.displayName;
    userDetail.emailId = currentUser.email;
    userDetail.photoUrl = currentUser.photoURL;
    userDetail.uuid = currentUser.uid;
    userDetail.phoneNo = currentUser.phoneNumber;
    return userDetail;
  }
}

